
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int dev_addr; } ;
struct macsec_dev {struct net_device* real_dev; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int dev_mc_unsync (struct net_device*,struct net_device*) ;
 int dev_set_allmulti (struct net_device*,int) ;
 int dev_set_promiscuity (struct net_device*,int) ;
 int dev_uc_del (struct net_device*,int ) ;
 int dev_uc_unsync (struct net_device*,struct net_device*) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int macsec_dev_stop(struct net_device *dev)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct net_device *real_dev = macsec->real_dev;

 netif_carrier_off(dev);

 dev_mc_unsync(real_dev, dev);
 dev_uc_unsync(real_dev, dev);

 if (dev->flags & IFF_ALLMULTI)
  dev_set_allmulti(real_dev, -1);

 if (dev->flags & IFF_PROMISC)
  dev_set_promiscuity(real_dev, -1);

 dev_uc_del(real_dev, dev->dev_addr);

 return 0;
}
