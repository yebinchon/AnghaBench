
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sf2_priv {int dummy; } ;


 int INTRL2_CPU_CLEAR ;
 int intrl2_0_mask_set (struct bcm_sf2_priv*,int) ;
 int intrl2_0_writel (struct bcm_sf2_priv*,int,int ) ;
 int intrl2_1_mask_set (struct bcm_sf2_priv*,int) ;
 int intrl2_1_writel (struct bcm_sf2_priv*,int,int ) ;

__attribute__((used)) static void bcm_sf2_intr_disable(struct bcm_sf2_priv *priv)
{
 intrl2_0_mask_set(priv, 0xffffffff);
 intrl2_0_writel(priv, 0xffffffff, INTRL2_CPU_CLEAR);
 intrl2_1_mask_set(priv, 0xffffffff);
 intrl2_1_writel(priv, 0xffffffff, INTRL2_CPU_CLEAR);
}
