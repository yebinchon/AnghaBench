
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int state; } ;
struct xcan_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int CAN_STATE_SLEEPING ;
 int XCAN_IXR_SLP_MASK ;
 int XCAN_IXR_WKUP_MASK ;
 struct xcan_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xcan_state_interrupt(struct net_device *ndev, u32 isr)
{
 struct xcan_priv *priv = netdev_priv(ndev);


 if (isr & XCAN_IXR_SLP_MASK)
  priv->can.state = CAN_STATE_SLEEPING;


 if (isr & XCAN_IXR_WKUP_MASK)
  priv->can.state = CAN_STATE_ERROR_ACTIVE;
}
