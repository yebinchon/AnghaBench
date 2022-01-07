
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xcan_priv {scalar_t__ (* read_reg ) (struct xcan_priv*,int ) ;} ;
struct net_device {int dummy; } ;
struct can_frame {scalar_t__* data; } ;
typedef enum can_state { ____Placeholder_can_state } can_state ;


 int CAN_STATE_ERROR_PASSIVE ;
 scalar_t__ WARN_ON (int) ;
 int XCAN_ECR_OFFSET ;
 scalar_t__ XCAN_ECR_REC_MASK ;
 scalar_t__ XCAN_ECR_TEC_MASK ;
 scalar_t__ XCAN_ESR_REC_SHIFT ;
 int can_change_state (struct net_device*,struct can_frame*,int,int) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct xcan_priv*,int ) ;

__attribute__((used)) static void xcan_set_error_state(struct net_device *ndev,
     enum can_state new_state,
     struct can_frame *cf)
{
 struct xcan_priv *priv = netdev_priv(ndev);
 u32 ecr = priv->read_reg(priv, XCAN_ECR_OFFSET);
 u32 txerr = ecr & XCAN_ECR_TEC_MASK;
 u32 rxerr = (ecr & XCAN_ECR_REC_MASK) >> XCAN_ESR_REC_SHIFT;
 enum can_state tx_state = txerr >= rxerr ? new_state : 0;
 enum can_state rx_state = txerr <= rxerr ? new_state : 0;


 if (WARN_ON(new_state > CAN_STATE_ERROR_PASSIVE))
  return;

 can_change_state(ndev, cf, tx_state, rx_state);

 if (cf) {
  cf->data[6] = txerr;
  cf->data[7] = rxerr;
 }
}
