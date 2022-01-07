
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct macsec_dev {struct net_device* real_dev; } ;
typedef int netdev_features_t ;


 int MACSEC_FEATURES ;
 int NETIF_F_GSO_SOFTWARE ;
 int NETIF_F_LLTX ;
 int NETIF_F_SOFT_FEATURES ;
 struct macsec_dev* macsec_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t macsec_fix_features(struct net_device *dev,
          netdev_features_t features)
{
 struct macsec_dev *macsec = macsec_priv(dev);
 struct net_device *real_dev = macsec->real_dev;

 features &= (real_dev->features & MACSEC_FEATURES) |
      NETIF_F_GSO_SOFTWARE | NETIF_F_SOFT_FEATURES;
 features |= NETIF_F_LLTX;

 return features;
}
