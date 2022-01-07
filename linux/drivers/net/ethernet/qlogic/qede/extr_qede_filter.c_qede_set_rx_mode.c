
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int sp_task; int sp_flags; } ;
struct net_device {int dummy; } ;


 int QEDE_SP_RX_MODE ;
 struct qede_dev* netdev_priv (struct net_device*) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;

void qede_set_rx_mode(struct net_device *ndev)
{
 struct qede_dev *edev = netdev_priv(ndev);

 set_bit(QEDE_SP_RX_MODE, &edev->sp_flags);
 schedule_delayed_work(&edev->sp_task, 0);
}
