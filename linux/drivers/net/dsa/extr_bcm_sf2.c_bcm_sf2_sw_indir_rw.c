
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcm_sf2_priv {int dummy; } ;


 int MDIO_MASTER_SEL ;
 int REG_SWITCH_CNTRL ;
 int core_readl (struct bcm_sf2_priv*,int) ;
 int core_writel (struct bcm_sf2_priv*,int,int) ;
 int reg_readl (struct bcm_sf2_priv*,int ) ;
 int reg_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static int bcm_sf2_sw_indir_rw(struct bcm_sf2_priv *priv, int op, int addr,
          int regnum, u16 val)
{
 int ret = 0;
 u32 reg;

 reg = reg_readl(priv, REG_SWITCH_CNTRL);
 reg |= MDIO_MASTER_SEL;
 reg_writel(priv, reg, REG_SWITCH_CNTRL);


 reg = 0x70;
 reg <<= 2;
 core_writel(priv, addr, reg);


 reg = 0x80 << 8 | regnum << 1;
 reg <<= 2;

 if (op)
  ret = core_readl(priv, reg);
 else
  core_writel(priv, val, reg);

 reg = reg_readl(priv, REG_SWITCH_CNTRL);
 reg &= ~MDIO_MASTER_SEL;
 reg_writel(priv, reg, REG_SWITCH_CNTRL);

 return ret & 0xffff;
}
