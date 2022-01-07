
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct bcm_sf2_priv {int dummy; } ;
struct b53_device {struct bcm_sf2_priv* priv; } ;


 int SF2_PAGE_REG_MKADDR (int ,int ) ;
 int core_writeq (struct bcm_sf2_priv*,int ,int ) ;

__attribute__((used)) static int bcm_sf2_core_write64(struct b53_device *dev, u8 page, u8 reg,
    u64 value)
{
 struct bcm_sf2_priv *priv = dev->priv;

 core_writeq(priv, value, SF2_PAGE_REG_MKADDR(page, reg));

 return 0;
}
