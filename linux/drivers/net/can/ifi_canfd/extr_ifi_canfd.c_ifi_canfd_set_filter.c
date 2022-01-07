
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ifi_canfd_priv {scalar_t__ base; } ;


 scalar_t__ IFI_CANFD_FILTER_IDENT (int const) ;
 scalar_t__ IFI_CANFD_FILTER_MASK (int const) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int writel (int const,scalar_t__) ;

__attribute__((used)) static void ifi_canfd_set_filter(struct net_device *ndev, const u32 id,
     const u32 mask, const u32 ident)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);

 writel(mask, priv->base + IFI_CANFD_FILTER_MASK(id));
 writel(ident, priv->base + IFI_CANFD_FILTER_IDENT(id));
}
