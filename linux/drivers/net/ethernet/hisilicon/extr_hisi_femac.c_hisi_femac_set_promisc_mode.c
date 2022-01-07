
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_femac_priv {scalar_t__ glb_base; } ;


 int FWCTRL_FWALL2CPU ;
 scalar_t__ GLB_FWCTRL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void hisi_femac_set_promisc_mode(struct hisi_femac_priv *priv,
     bool promisc_mode)
{
 u32 val;

 val = readl(priv->glb_base + GLB_FWCTRL);
 if (promisc_mode)
  val |= FWCTRL_FWALL2CPU;
 else
  val &= ~FWCTRL_FWALL2CPU;
 writel(val, priv->glb_base + GLB_FWCTRL);
}
