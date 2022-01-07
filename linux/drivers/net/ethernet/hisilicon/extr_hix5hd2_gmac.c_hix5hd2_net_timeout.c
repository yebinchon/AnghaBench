
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hix5hd2_priv {int tx_timeout_task; } ;


 struct hix5hd2_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void hix5hd2_net_timeout(struct net_device *dev)
{
 struct hix5hd2_priv *priv = netdev_priv(dev);

 schedule_work(&priv->tx_timeout_task);
}
