
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sysport_priv {int is_lite; } ;


 int INTRL2_CPU_CLEAR ;
 int intrl2_0_mask_set (struct bcm_sysport_priv*,int) ;
 int intrl2_0_writel (struct bcm_sysport_priv*,int,int ) ;
 int intrl2_1_mask_set (struct bcm_sysport_priv*,int) ;
 int intrl2_1_writel (struct bcm_sysport_priv*,int,int ) ;

__attribute__((used)) static inline void bcm_sysport_mask_all_intrs(struct bcm_sysport_priv *priv)
{
 intrl2_0_mask_set(priv, 0xffffffff);
 intrl2_0_writel(priv, 0xffffffff, INTRL2_CPU_CLEAR);
 if (!priv->is_lite) {
  intrl2_1_mask_set(priv, 0xffffffff);
  intrl2_1_writel(priv, 0xffffffff, INTRL2_CPU_CLEAR);
 }
}
