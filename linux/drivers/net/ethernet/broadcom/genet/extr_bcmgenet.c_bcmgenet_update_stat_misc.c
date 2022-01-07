
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcmgenet_priv {int dummy; } ;


 int GENET_IS_V2 (struct bcmgenet_priv*) ;
 int RBUF_ERR_CNT_V2 ;
 int RBUF_ERR_CNT_V3PLUS ;
 int RBUF_OVFL_CNT_V2 ;
 int RBUF_OVFL_CNT_V3PLUS ;


 int bcmgenet_rbuf_readl (struct bcmgenet_priv*,int) ;
 int bcmgenet_rbuf_writel (struct bcmgenet_priv*,int ,int) ;
 int bcmgenet_umac_readl (struct bcmgenet_priv*,int) ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,int ,int) ;

__attribute__((used)) static u32 bcmgenet_update_stat_misc(struct bcmgenet_priv *priv, u16 offset)
{
 u16 new_offset;
 u32 val;

 switch (offset) {
 case 128:
  if (GENET_IS_V2(priv))
   new_offset = RBUF_OVFL_CNT_V2;
  else
   new_offset = RBUF_OVFL_CNT_V3PLUS;

  val = bcmgenet_rbuf_readl(priv, new_offset);

  if (val == ~0)
   bcmgenet_rbuf_writel(priv, 0, new_offset);
  break;
 case 129:
  if (GENET_IS_V2(priv))
   new_offset = RBUF_ERR_CNT_V2;
  else
   new_offset = RBUF_ERR_CNT_V3PLUS;

  val = bcmgenet_rbuf_readl(priv, new_offset);

  if (val == ~0)
   bcmgenet_rbuf_writel(priv, 0, new_offset);
  break;
 default:
  val = bcmgenet_umac_readl(priv, offset);

  if (val == ~0)
   bcmgenet_umac_writel(priv, 0, offset);
  break;
 }

 return val;
}
