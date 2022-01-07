
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct ifi_canfd_priv {TYPE_1__ can; scalar_t__ base; } ;


 int CAN_STATE_STOPPED ;
 scalar_t__ IFI_CANFD_ERROR_CTR ;
 int IFI_CANFD_ERROR_CTR_ER_RESET ;
 scalar_t__ IFI_CANFD_INTERRUPT ;
 scalar_t__ IFI_CANFD_INTERRUPT_SET_IRQ ;
 scalar_t__ IFI_CANFD_IRQMASK ;
 scalar_t__ IFI_CANFD_STCMD ;
 int IFI_CANFD_STCMD_HARDRESET ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ifi_canfd_stop(struct net_device *ndev)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);


 writel(IFI_CANFD_ERROR_CTR_ER_RESET, priv->base + IFI_CANFD_ERROR_CTR);
 writel(0, priv->base + IFI_CANFD_ERROR_CTR);


 writel(IFI_CANFD_STCMD_HARDRESET, priv->base + IFI_CANFD_STCMD);


 writel(~0, priv->base + IFI_CANFD_IRQMASK);


 writel((u32)(~IFI_CANFD_INTERRUPT_SET_IRQ),
        priv->base + IFI_CANFD_INTERRUPT);


 priv->can.state = CAN_STATE_STOPPED;
}
