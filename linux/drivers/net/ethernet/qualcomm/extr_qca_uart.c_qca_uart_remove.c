
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct qcauart {int net_dev; int tx_work; } ;


 int cancel_work_sync (int *) ;
 int free_netdev (int ) ;
 int serdev_device_close (struct serdev_device*) ;
 struct qcauart* serdev_device_get_drvdata (struct serdev_device*) ;
 int unregister_netdev (int ) ;

__attribute__((used)) static void qca_uart_remove(struct serdev_device *serdev)
{
 struct qcauart *qca = serdev_device_get_drvdata(serdev);

 unregister_netdev(qca->net_dev);


 serdev_device_close(serdev);
 cancel_work_sync(&qca->tx_work);

 free_netdev(qca->net_dev);
}
