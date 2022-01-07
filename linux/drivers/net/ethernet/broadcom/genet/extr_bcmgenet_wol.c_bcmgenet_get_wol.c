
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; int * sopass; } ;
struct bcmgenet_priv {int wolopts; } ;


 int UMAC_MPD_PW_LS ;
 int UMAC_MPD_PW_MS ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int ) ;
 int memset (int *,int ,int) ;
 struct bcmgenet_priv* netdev_priv (struct net_device*) ;
 int put_unaligned_be16 (int ,int *) ;
 int put_unaligned_be32 (int ,int *) ;

void bcmgenet_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct bcmgenet_priv *priv = netdev_priv(dev);
 u32 reg;

 wol->supported = WAKE_MAGIC | WAKE_MAGICSECURE;
 wol->wolopts = priv->wolopts;
 memset(wol->sopass, 0, sizeof(wol->sopass));

 if (wol->wolopts & WAKE_MAGICSECURE) {
  reg = bcmgenet_umac_readl(priv, UMAC_MPD_PW_MS);
  put_unaligned_be16(reg, &wol->sopass[0]);
  reg = bcmgenet_umac_readl(priv, UMAC_MPD_PW_LS);
  put_unaligned_be32(reg, &wol->sopass[2]);
 }
}
