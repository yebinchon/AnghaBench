
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int flags; int dev_addr; } ;
struct macsec_dev {struct net_device* real_dev; } ;


 int EADDRNOTAVAIL ;
 int IFF_UP ;
 int dev_uc_add (struct net_device*,int ) ;
 int dev_uc_del (struct net_device*,int ) ;
 int ether_addr_copy (int ,int ) ;
 int is_valid_ether_addr (int ) ;
 struct macsec_dev* macsec_priv (struct net_device*) ;

__attribute__((used)) static int macsec_set_mac_address(struct net_device *dev, void *p)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct net_device *real_dev = macsec->real_dev;
 struct sockaddr *addr = p;
 int err;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 if (!(dev->flags & IFF_UP))
  goto out;

 err = dev_uc_add(real_dev, addr->sa_data);
 if (err < 0)
  return err;

 dev_uc_del(real_dev, dev->dev_addr);

out:
 ether_addr_copy(dev->dev_addr, addr->sa_data);
 return 0;
}
