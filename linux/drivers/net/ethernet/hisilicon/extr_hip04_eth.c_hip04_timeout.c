
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hip04_priv {int tx_timeout_task; } ;


 struct hip04_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void hip04_timeout(struct net_device *ndev)
{
 struct hip04_priv *priv = netdev_priv(ndev);

 schedule_work(&priv->tx_timeout_task);
}
