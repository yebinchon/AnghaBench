
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qcaspi {int net_dev; } ;


 int SPI_REG_INTR_CAUSE ;
 int SPI_REG_INTR_ENABLE ;
 int netdev_dbg (int ,char*,scalar_t__) ;
 int qcaspi_read_register (struct qcaspi*,int ,scalar_t__*) ;
 int qcaspi_write_register (struct qcaspi*,int ,int ,int ) ;
 int wr_verify ;

__attribute__((used)) static void
start_spi_intr_handling(struct qcaspi *qca, u16 *intr_cause)
{
 *intr_cause = 0;

 qcaspi_write_register(qca, SPI_REG_INTR_ENABLE, 0, wr_verify);
 qcaspi_read_register(qca, SPI_REG_INTR_CAUSE, intr_cause);
 netdev_dbg(qca->net_dev, "interrupts: 0x%04x\n", *intr_cause);
}
