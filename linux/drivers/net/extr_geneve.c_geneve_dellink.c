
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct list_head {int dummy; } ;
struct geneve_dev {int next; } ;


 int list_del (int *) ;
 struct geneve_dev* netdev_priv (struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void geneve_dellink(struct net_device *dev, struct list_head *head)
{
 struct geneve_dev *geneve = netdev_priv(dev);

 list_del(&geneve->next);
 unregister_netdevice_queue(dev, head);
}
