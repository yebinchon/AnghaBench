
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_femac_priv {scalar_t__ glb_base; } ;


 scalar_t__ GLB_SOFT_RESET ;
 int SOFT_RESET_ALL ;
 int readl (scalar_t__) ;
 int usleep_range (int,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int hisi_femac_port_reset(struct hisi_femac_priv *priv)
{
 u32 val;

 val = readl(priv->glb_base + GLB_SOFT_RESET);
 val |= SOFT_RESET_ALL;
 writel(val, priv->glb_base + GLB_SOFT_RESET);

 usleep_range(500, 800);

 val &= ~SOFT_RESET_ALL;
 writel(val, priv->glb_base + GLB_SOFT_RESET);

 return 0;
}
