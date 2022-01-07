
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcmgenet_priv {scalar_t__ phy_interface; TYPE_1__* hw_params; scalar_t__ ext_phy; scalar_t__ internal_phy; } ;
struct TYPE_2__ {int flags; } ;


 int GENET_HAS_MOCA_LINK_DET ;
 scalar_t__ GENET_IS_V1 (struct bcmgenet_priv*) ;
 scalar_t__ GENET_IS_V2 (struct bcmgenet_priv*) ;
 scalar_t__ GENET_IS_V3 (struct bcmgenet_priv*) ;
 int INTRL2_CPU_MASK_CLEAR ;
 scalar_t__ PHY_INTERFACE_MODE_MOCA ;
 int UMAC_IRQ_LINK_EVENT ;
 int UMAC_IRQ_PHY_DET_R ;
 int bcmgenet_intrl2_0_writel (struct bcmgenet_priv*,int ,int ) ;

__attribute__((used)) static void bcmgenet_link_intr_enable(struct bcmgenet_priv *priv)
{
 u32 int0_enable = 0;




 if (priv->internal_phy) {
  int0_enable |= UMAC_IRQ_LINK_EVENT;
  if (GENET_IS_V1(priv) || GENET_IS_V2(priv) || GENET_IS_V3(priv))
   int0_enable |= UMAC_IRQ_PHY_DET_R;
 } else if (priv->ext_phy) {
  int0_enable |= UMAC_IRQ_LINK_EVENT;
 } else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
  if (priv->hw_params->flags & GENET_HAS_MOCA_LINK_DET)
   int0_enable |= UMAC_IRQ_LINK_EVENT;
 }
 bcmgenet_intrl2_0_writel(priv, int0_enable, INTRL2_CPU_MASK_CLEAR);
}
