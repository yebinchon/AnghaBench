
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int ) ;int (* write_reg ) (struct xcan_priv*,int ,int) ;TYPE_1__ devtype; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;


 int CAN_LED_EVENT_RX ;
 int XCAN_FLAG_RX_FIFO_MULTI ;
 int XCAN_FSR_IRI_MASK ;
 int XCAN_FSR_OFFSET ;
 int XCAN_ICR_OFFSET ;
 int XCAN_IER_OFFSET ;
 int XCAN_IXR_RXNEMP_MASK ;
 int XCAN_IXR_RXOK_MASK ;
 int can_led_event (struct net_device*,int ) ;
 int napi_complete_done (struct napi_struct*,int) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct xcan_priv*,int ,int) ;
 int stub2 (struct xcan_priv*,int ,int) ;
 int stub3 (struct xcan_priv*,int ) ;
 int stub4 (struct xcan_priv*,int ,int) ;
 scalar_t__ xcan_rx (struct net_device*,int) ;
 int xcan_rx_fifo_get_next_frame (struct xcan_priv*) ;
 int xcan_rx_int_mask (struct xcan_priv*) ;
 int xcan_update_error_state_after_rxtx (struct net_device*) ;
 scalar_t__ xcanfd_rx (struct net_device*,int) ;

__attribute__((used)) static int xcan_rx_poll(struct napi_struct *napi, int quota)
{
 struct net_device *ndev = napi->dev;
 struct xcan_priv *priv = netdev_priv(ndev);
 u32 ier;
 int work_done = 0;
 int frame_offset;

 while ((frame_offset = xcan_rx_fifo_get_next_frame(priv)) >= 0 &&
        (work_done < quota)) {
  if (xcan_rx_int_mask(priv) & XCAN_IXR_RXOK_MASK)
   work_done += xcanfd_rx(ndev, frame_offset);
  else
   work_done += xcan_rx(ndev, frame_offset);

  if (priv->devtype.flags & XCAN_FLAG_RX_FIFO_MULTI)

   priv->write_reg(priv, XCAN_FSR_OFFSET,
     XCAN_FSR_IRI_MASK);
  else



   priv->write_reg(priv, XCAN_ICR_OFFSET,
     XCAN_IXR_RXNEMP_MASK);
 }

 if (work_done) {
  can_led_event(ndev, CAN_LED_EVENT_RX);
  xcan_update_error_state_after_rxtx(ndev);
 }

 if (work_done < quota) {
  napi_complete_done(napi, work_done);
  ier = priv->read_reg(priv, XCAN_IER_OFFSET);
  ier |= xcan_rx_int_mask(priv);
  priv->write_reg(priv, XCAN_IER_OFFSET, ier);
 }
 return work_done;
}
