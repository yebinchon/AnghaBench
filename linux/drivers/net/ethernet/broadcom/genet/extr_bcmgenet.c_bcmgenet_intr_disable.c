
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcmgenet_priv {int dummy; } ;


 int INTRL2_CPU_CLEAR ;
 int INTRL2_CPU_MASK_SET ;
 int bcmgenet_intrl2_0_writel (struct bcmgenet_priv*,int,int ) ;
 int bcmgenet_intrl2_1_writel (struct bcmgenet_priv*,int,int ) ;

__attribute__((used)) static void bcmgenet_intr_disable(struct bcmgenet_priv *priv)
{

 bcmgenet_intrl2_0_writel(priv, 0xFFFFFFFF, INTRL2_CPU_MASK_SET);
 bcmgenet_intrl2_0_writel(priv, 0xFFFFFFFF, INTRL2_CPU_CLEAR);
 bcmgenet_intrl2_1_writel(priv, 0xFFFFFFFF, INTRL2_CPU_MASK_SET);
 bcmgenet_intrl2_1_writel(priv, 0xFFFFFFFF, INTRL2_CPU_CLEAR);
}
