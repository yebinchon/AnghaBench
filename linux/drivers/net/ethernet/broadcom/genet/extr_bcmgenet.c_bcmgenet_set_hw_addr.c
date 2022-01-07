
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_priv {int dummy; } ;


 int UMAC_MAC0 ;
 int UMAC_MAC1 ;
 int bcmgenet_umac_writel (struct bcmgenet_priv*,unsigned char,int ) ;

__attribute__((used)) static void bcmgenet_set_hw_addr(struct bcmgenet_priv *priv,
     unsigned char *addr)
{
 bcmgenet_umac_writel(priv, (addr[0] << 24) | (addr[1] << 16) |
   (addr[2] << 8) | addr[3], UMAC_MAC0);
 bcmgenet_umac_writel(priv, (addr[4] << 8) | addr[5], UMAC_MAC1);
}
