
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macsec_dev {int secys; struct net_device* real_dev; } ;
struct list_head {int dummy; } ;


 int list_del_rcu (int *) ;
 int macsec_del_dev (struct macsec_dev*) ;
 int macsec_generation ;
 struct macsec_dev* macsec_priv (struct net_device*) ;
 int netdev_upper_dev_unlink (struct net_device*,struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void macsec_common_dellink(struct net_device *dev, struct list_head *head)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct net_device *real_dev = macsec->real_dev;

 unregister_netdevice_queue(dev, head);
 list_del_rcu(&macsec->secys);
 macsec_del_dev(macsec);
 netdev_upper_dev_unlink(real_dev, dev);

 macsec_generation++;
}
