
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcaspi {TYPE_1__* spi_dev; } ;
struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;
struct TYPE_2__ {int dev; } ;


 char* QCASPI_DRV_NAME ;
 char* QCASPI_DRV_VERSION ;
 char* dev_name (int *) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void
qcaspi_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *p)
{
 struct qcaspi *qca = netdev_priv(dev);

 strlcpy(p->driver, QCASPI_DRV_NAME, sizeof(p->driver));
 strlcpy(p->version, QCASPI_DRV_VERSION, sizeof(p->version));
 strlcpy(p->fw_version, "QCA7000", sizeof(p->fw_version));
 strlcpy(p->bus_info, dev_name(&qca->spi_dev->dev),
  sizeof(p->bus_info));
}
