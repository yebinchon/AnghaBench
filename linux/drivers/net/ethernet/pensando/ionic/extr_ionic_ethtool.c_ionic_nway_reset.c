
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ionic_lif {struct ionic* ionic; } ;
struct ionic {int dev_cmd_lock; int idev; } ;


 int DEVCMD_TIMEOUT ;
 int IONIC_PORT_ADMIN_STATE_DOWN ;
 int IONIC_PORT_ADMIN_STATE_UP ;
 int ionic_dev_cmd_port_state (int *,int ) ;
 int ionic_dev_cmd_wait (struct ionic*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ionic_nway_reset(struct net_device *netdev)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 struct ionic *ionic = lif->ionic;
 int err = 0;



 mutex_lock(&ionic->dev_cmd_lock);

 ionic_dev_cmd_port_state(&ionic->idev, IONIC_PORT_ADMIN_STATE_DOWN);
 err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);

 if (!err) {
  ionic_dev_cmd_port_state(&ionic->idev, IONIC_PORT_ADMIN_STATE_UP);
  err = ionic_dev_cmd_wait(ionic, DEVCMD_TIMEOUT);
 }

 mutex_unlock(&ionic->dev_cmd_lock);

 return err;
}
