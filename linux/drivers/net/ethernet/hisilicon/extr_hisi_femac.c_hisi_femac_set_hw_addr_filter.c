
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct hisi_femac_priv {scalar_t__ glb_base; } ;


 unsigned char BIT_MACFLT_ENA ;
 unsigned char BIT_MACFLT_FW2CPU ;
 unsigned int GLB_MAC_H16 (unsigned int) ;
 unsigned int GLB_MAC_L32 (unsigned int) ;
 unsigned char MACFLT_HI16_MASK ;
 unsigned char readl (scalar_t__) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static void hisi_femac_set_hw_addr_filter(struct hisi_femac_priv *priv,
       unsigned char *addr,
       unsigned int reg_n)
{
 unsigned int high, low;
 u32 val;

 high = GLB_MAC_H16(reg_n);
 low = GLB_MAC_L32(reg_n);

 val = (addr[2] << 24) | (addr[3] << 16) | (addr[4] << 8) | addr[5];
 writel(val, priv->glb_base + low);

 val = readl(priv->glb_base + high);
 val &= ~MACFLT_HI16_MASK;
 val |= ((addr[0] << 8) | addr[1]);
 val |= (BIT_MACFLT_ENA | BIT_MACFLT_FW2CPU);
 writel(val, priv->glb_base + high);
}
