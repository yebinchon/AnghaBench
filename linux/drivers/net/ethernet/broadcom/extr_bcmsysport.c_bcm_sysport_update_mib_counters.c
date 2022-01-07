
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bcm_sysport_stats {int type; int stat_offset; scalar_t__ stat_sizeof; int reg_offset; } ;
struct bcm_sysport_priv {int netdev; int is_lite; } ;


 int BCM_SYSPORT_STATS_LEN ;
 int UMAC_MIB_START ;
 scalar_t__ UMAC_MIB_STAT_OFFSET ;
 struct bcm_sysport_stats* bcm_sysport_gstrings_stats ;
 int hw ;
 int netif_dbg (struct bcm_sysport_priv*,int ,int ,char*) ;
 int rbuf_readl (struct bcm_sysport_priv*,int ) ;
 int rbuf_writel (struct bcm_sysport_priv*,int ,int ) ;
 int rxchk_readl (struct bcm_sysport_priv*,int ) ;
 int rxchk_writel (struct bcm_sysport_priv*,int ,int ) ;
 int umac_readl (struct bcm_sysport_priv*,scalar_t__) ;

__attribute__((used)) static void bcm_sysport_update_mib_counters(struct bcm_sysport_priv *priv)
{
 int i, j = 0;

 for (i = 0; i < BCM_SYSPORT_STATS_LEN; i++) {
  const struct bcm_sysport_stats *s;
  u8 offset = 0;
  u32 val = 0;
  char *p;

  s = &bcm_sysport_gstrings_stats[i];
  switch (s->type) {
  case 133:
  case 132:
  case 128:
   continue;
  case 135:
  case 134:
  case 130:
   if (priv->is_lite)
    continue;

   if (s->type != 135)
    offset = UMAC_MIB_STAT_OFFSET;
   val = umac_readl(priv, UMAC_MIB_START + j + offset);
   break;
  case 129:
   val = rxchk_readl(priv, s->reg_offset);
   if (val == ~0)
    rxchk_writel(priv, 0, s->reg_offset);
   break;
  case 131:
   val = rbuf_readl(priv, s->reg_offset);
   if (val == ~0)
    rbuf_writel(priv, 0, s->reg_offset);
   break;
  }

  j += s->stat_sizeof;
  p = (char *)priv + s->stat_offset;
  *(u32 *)p = val;
 }

 netif_dbg(priv, hw, priv->netdev, "updated MIB counters\n");
}
