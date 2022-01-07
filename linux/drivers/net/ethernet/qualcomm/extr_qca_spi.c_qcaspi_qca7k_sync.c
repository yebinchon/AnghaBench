
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int reset_timeout; int trig_reset; } ;
struct qcaspi {int sync; int net_dev; TYPE_1__ stats; } ;


 int QCASPI_EVENT_CPUON ;
 scalar_t__ QCASPI_GOOD_SIGNATURE ;
 scalar_t__ QCASPI_HW_BUF_LEN ;
 scalar_t__ QCASPI_RESET_TIMEOUT ;
 scalar_t__ QCASPI_SLAVE_RESET_BIT ;



 int SPI_REG_SIGNATURE ;
 int SPI_REG_SPI_CONFIG ;
 int SPI_REG_WRBUF_SPC_AVA ;
 int netdev_dbg (int ,char*,...) ;
 int qcaspi_read_register (struct qcaspi*,int ,scalar_t__*) ;
 int qcaspi_write_register (struct qcaspi*,int ,scalar_t__,int ) ;

__attribute__((used)) static void
qcaspi_qca7k_sync(struct qcaspi *qca, int event)
{
 u16 signature = 0;
 u16 spi_config;
 u16 wrbuf_space = 0;
 static u16 reset_count;

 if (event == QCASPI_EVENT_CPUON) {



  qcaspi_read_register(qca, SPI_REG_SIGNATURE, &signature);
  qcaspi_read_register(qca, SPI_REG_SIGNATURE, &signature);
  if (signature != QCASPI_GOOD_SIGNATURE) {
   qca->sync = 128;
   netdev_dbg(qca->net_dev, "sync: got CPU on, but signature was invalid, restart\n");
  } else {

   qcaspi_read_register(qca, SPI_REG_WRBUF_SPC_AVA,
          &wrbuf_space);
   if (wrbuf_space != QCASPI_HW_BUF_LEN) {
    netdev_dbg(qca->net_dev, "sync: got CPU on, but wrbuf not empty. reset!\n");
    qca->sync = 128;
   } else {
    netdev_dbg(qca->net_dev, "sync: got CPU on, now in sync\n");
    qca->sync = 130;
    return;
   }
  }
 }

 switch (qca->sync) {
 case 130:

  qcaspi_read_register(qca, SPI_REG_SIGNATURE, &signature);
  if (signature != QCASPI_GOOD_SIGNATURE) {
   qca->sync = 128;
   netdev_dbg(qca->net_dev, "sync: bad signature, restart\n");

   return;
  }
  break;
 case 128:

  qcaspi_read_register(qca, SPI_REG_SIGNATURE, &signature);
  if (signature != QCASPI_GOOD_SIGNATURE) {
   netdev_dbg(qca->net_dev, "sync: could not read signature to reset device, retry.\n");
   return;
  }


  netdev_dbg(qca->net_dev, "sync: resetting device.\n");
  qcaspi_read_register(qca, SPI_REG_SPI_CONFIG, &spi_config);
  spi_config |= QCASPI_SLAVE_RESET_BIT;
  qcaspi_write_register(qca, SPI_REG_SPI_CONFIG, spi_config, 0);

  qca->sync = 129;
  qca->stats.trig_reset++;
  reset_count = 0;
  break;
 case 129:
  reset_count++;
  netdev_dbg(qca->net_dev, "sync: waiting for CPU on, count %u.\n",
      reset_count);
  if (reset_count >= QCASPI_RESET_TIMEOUT) {

   qca->sync = 128;
   qca->stats.reset_timeout++;
   netdev_dbg(qca->net_dev, "sync: reset timeout, restarting process.\n");
  }
  break;
 }
}
