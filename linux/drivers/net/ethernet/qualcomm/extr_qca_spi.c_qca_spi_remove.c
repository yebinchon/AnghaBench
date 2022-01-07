
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct qcaspi {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct qcaspi* netdev_priv (struct net_device*) ;
 int qcaspi_remove_device_debugfs (struct qcaspi*) ;
 struct net_device* spi_get_drvdata (struct spi_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int
qca_spi_remove(struct spi_device *spi)
{
 struct net_device *qcaspi_devs = spi_get_drvdata(spi);
 struct qcaspi *qca = netdev_priv(qcaspi_devs);

 qcaspi_remove_device_debugfs(qca);

 unregister_netdev(qcaspi_devs);
 free_netdev(qcaspi_devs);

 return 0;
}
