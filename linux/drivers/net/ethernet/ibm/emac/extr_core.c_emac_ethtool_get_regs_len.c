
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct emac_instance {int tah_dev; int rgmii_dev; int zmii_dev; int mal; } ;
struct emac_ethtool_regs_hdr {int dummy; } ;


 int EMAC_FTR_HAS_RGMII ;
 int EMAC_FTR_HAS_TAH ;
 int EMAC_FTR_HAS_ZMII ;
 int emac_get_regs_len (struct emac_instance*) ;
 scalar_t__ emac_has_feature (struct emac_instance*,int ) ;
 int mal_get_regs_len (int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;
 scalar_t__ rgmii_get_regs_len (int ) ;
 scalar_t__ tah_get_regs_len (int ) ;
 scalar_t__ zmii_get_regs_len (int ) ;

__attribute__((used)) static int emac_ethtool_get_regs_len(struct net_device *ndev)
{
 struct emac_instance *dev = netdev_priv(ndev);
 int size;

 size = sizeof(struct emac_ethtool_regs_hdr) +
  emac_get_regs_len(dev) + mal_get_regs_len(dev->mal);
 if (emac_has_feature(dev, EMAC_FTR_HAS_ZMII))
  size += zmii_get_regs_len(dev->zmii_dev);
 if (emac_has_feature(dev, EMAC_FTR_HAS_RGMII))
  size += rgmii_get_regs_len(dev->rgmii_dev);
 if (emac_has_feature(dev, EMAC_FTR_HAS_TAH))
  size += tah_get_regs_len(dev->tah_dev);

 return size;
}
