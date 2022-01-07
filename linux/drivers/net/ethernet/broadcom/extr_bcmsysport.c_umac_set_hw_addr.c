
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct bcm_sysport_priv {int is_lite; } ;


 int GIB_MAC0 ;
 int GIB_MAC1 ;
 int UMAC_MAC0 ;
 int UMAC_MAC1 ;
 int gib_writel (struct bcm_sysport_priv*,unsigned char,int ) ;
 int umac_writel (struct bcm_sysport_priv*,unsigned char,int ) ;

__attribute__((used)) static void umac_set_hw_addr(struct bcm_sysport_priv *priv,
        unsigned char *addr)
{
 u32 mac0 = (addr[0] << 24) | (addr[1] << 16) | (addr[2] << 8) |
      addr[3];
 u32 mac1 = (addr[4] << 8) | addr[5];

 if (!priv->is_lite) {
  umac_writel(priv, mac0, UMAC_MAC0);
  umac_writel(priv, mac1, UMAC_MAC1);
 } else {
  gib_writel(priv, mac0, GIB_MAC0);
  gib_writel(priv, mac1, GIB_MAC1);
 }
}
