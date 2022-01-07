
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct qcauart {int tx_work; } ;


 int schedule_work (int *) ;
 struct qcauart* serdev_device_get_drvdata (struct serdev_device*) ;

__attribute__((used)) static void qca_tty_wakeup(struct serdev_device *serdev)
{
 struct qcauart *qca = serdev_device_get_drvdata(serdev);

 schedule_work(&qca->tx_work);
}
