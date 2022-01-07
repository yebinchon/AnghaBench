
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct bcmgenet_stats {int type; int stat_offset; scalar_t__ stat_sizeof; scalar_t__ reg_offset; } ;
struct bcmgenet_priv {int dummy; } ;


 int BCMGENET_STATS_LEN ;




 scalar_t__ BCMGENET_STAT_OFFSET ;


 int GENET_IS_V1 (struct bcmgenet_priv*) ;
 int UMAC_MIB_START ;
 struct bcmgenet_stats* bcmgenet_gstrings_stats ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,scalar_t__) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,scalar_t__) ;
 int bcmgenet_update_stat_misc (struct bcmgenet_priv*,scalar_t__) ;

__attribute__((used)) static void bcmgenet_update_mib_counters(struct bcmgenet_priv *priv)
{
 int i, j = 0;

 for (i = 0; i < BCMGENET_STATS_LEN; i++) {
  const struct bcmgenet_stats *s;
  u8 offset = 0;
  u32 val = 0;
  char *p;

  s = &bcmgenet_gstrings_stats[i];
  switch (s->type) {
  case 130:
  case 128:
   continue;
  case 129:
   offset += BCMGENET_STAT_OFFSET;

  case 132:
   offset += BCMGENET_STAT_OFFSET;

  case 133:
   val = bcmgenet_umac_readl(priv,
        UMAC_MIB_START + j + offset);
   offset = 0;
   break;
  case 131:
   if (GENET_IS_V1(priv)) {
    val = bcmgenet_umac_readl(priv, s->reg_offset);

    if (val == ~0)
     bcmgenet_umac_writel(priv, 0,
            s->reg_offset);
   } else {
    val = bcmgenet_update_stat_misc(priv,
        s->reg_offset);
   }
   break;
  }

  j += s->stat_sizeof;
  p = (char *)priv + s->stat_offset;
  *(u32 *)p = val;
 }
}
