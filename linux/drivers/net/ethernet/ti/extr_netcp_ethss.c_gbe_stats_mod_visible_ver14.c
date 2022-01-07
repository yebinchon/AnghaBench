
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gbe_priv {int dummy; } ;


 int GBE_REG_ADDR (struct gbe_priv*,int ,int ) ;




 int GBE_STATS_CD_SEL ;
 int readl (int ) ;
 int stat_port_en ;
 int switch_regs ;
 int writel (int ,int ) ;

__attribute__((used)) static inline void gbe_stats_mod_visible_ver14(struct gbe_priv *gbe_dev,
            int stats_mod)
{
 u32 val;

 val = readl(GBE_REG_ADDR(gbe_dev, switch_regs, stat_port_en));

 switch (stats_mod) {
 case 131:
 case 130:
  val &= ~GBE_STATS_CD_SEL;
  break;
 case 129:
 case 128:
  val |= GBE_STATS_CD_SEL;
  break;
 default:
  return;
 }


 writel(val, GBE_REG_ADDR(gbe_dev, switch_regs, stat_port_en));
}
