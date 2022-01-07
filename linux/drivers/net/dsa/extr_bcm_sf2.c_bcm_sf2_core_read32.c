
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bcm_sf2_priv {int dummy; } ;
struct b53_device {struct bcm_sf2_priv* priv; } ;


 int SF2_PAGE_REG_MKADDR (int ,int ) ;
 int core_readl (struct bcm_sf2_priv*,int ) ;

__attribute__((used)) static int bcm_sf2_core_read32(struct b53_device *dev, u8 page, u8 reg,
          u32 *val)
{
 struct bcm_sf2_priv *priv = dev->priv;

 *val = core_readl(priv, SF2_PAGE_REG_MKADDR(page, reg));

 return 0;
}
