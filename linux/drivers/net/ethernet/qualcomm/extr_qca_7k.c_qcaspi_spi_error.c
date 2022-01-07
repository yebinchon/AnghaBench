
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int spi_err; } ;
struct qcaspi {scalar_t__ sync; TYPE_1__ stats; int net_dev; } ;


 scalar_t__ QCASPI_SYNC_READY ;
 scalar_t__ QCASPI_SYNC_UNKNOWN ;
 int netdev_err (int ,char*) ;

void
qcaspi_spi_error(struct qcaspi *qca)
{
 if (qca->sync != QCASPI_SYNC_READY)
  return;

 netdev_err(qca->net_dev, "spi error\n");
 qca->sync = QCASPI_SYNC_UNKNOWN;
 qca->stats.spi_err++;
}
