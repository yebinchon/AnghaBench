
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tstats; } ;
struct gtp_dev {int dummy; } ;


 int free_percpu (int ) ;
 int gtp_encap_disable (struct gtp_dev*) ;
 struct gtp_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gtp_dev_uninit(struct net_device *dev)
{
 struct gtp_dev *gtp = netdev_priv(dev);

 gtp_encap_disable(gtp);
 free_percpu(dev->tstats);
}
