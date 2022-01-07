
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int unique; int used; } ;
struct bcm_sf2_priv {TYPE_1__ cfp; } ;


 int CHAIN_ID_MASK ;
 int CORE_CFP_DATA_PORT (int) ;
 int OP_SEL_READ ;
 int OP_SEL_WRITE ;
 int SLICE_VALID ;
 int TCAM_SEL ;
 int bcm_sf2_cfp_op (struct bcm_sf2_priv*,int) ;
 int bcm_sf2_cfp_rule_addr_set (struct bcm_sf2_priv*,int) ;
 int clear_bit (int,int ) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;
 int core_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static int bcm_sf2_cfp_rule_del_one(struct bcm_sf2_priv *priv, int port,
        u32 loc, u32 *next_loc)
{
 int ret;
 u32 reg;


 bcm_sf2_cfp_rule_addr_set(priv, loc);

 ret = bcm_sf2_cfp_op(priv, OP_SEL_READ | TCAM_SEL);
 if (ret)
  return ret;





 reg = core_readl(priv, CORE_CFP_DATA_PORT(6));
 if (next_loc)
  *next_loc = (reg >> 24) & CHAIN_ID_MASK;


 reg = core_readl(priv, CORE_CFP_DATA_PORT(0));
 reg &= ~SLICE_VALID;
 core_writel(priv, reg, CORE_CFP_DATA_PORT(0));


 ret = bcm_sf2_cfp_op(priv, OP_SEL_WRITE | TCAM_SEL);
 if (ret)
  return ret;

 clear_bit(loc, priv->cfp.used);
 clear_bit(loc, priv->cfp.unique);

 return 0;
}
