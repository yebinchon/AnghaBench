
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct hisi_femac_priv {scalar_t__ glb_base; } ;


 scalar_t__ GLB_HOSTMAC_H16 ;
 scalar_t__ GLB_HOSTMAC_L32 ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static int hisi_femac_set_hw_mac_addr(struct hisi_femac_priv *priv,
          unsigned char *mac)
{
 u32 reg;

 reg = mac[1] | (mac[0] << 8);
 writel(reg, priv->glb_base + GLB_HOSTMAC_H16);

 reg = mac[5] | (mac[4] << 8) | (mac[3] << 16) | (mac[2] << 24);
 writel(reg, priv->glb_base + GLB_HOSTMAC_L32);

 return 0;
}
