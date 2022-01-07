
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int ) ;TYPE_1__ devtype; int (* write_reg ) (struct xcan_priv*,int ,int ) ;} ;


 int ENOENT ;
 int XCAN_2_FSR_FL_MASK ;
 int XCAN_2_FSR_RI_MASK ;
 int XCAN_FLAG_CANFD_2 ;
 int XCAN_FLAG_RX_FIFO_MULTI ;
 int XCAN_FSR_FL_MASK ;
 int XCAN_FSR_OFFSET ;
 int XCAN_FSR_RI_MASK ;
 int XCAN_ICR_OFFSET ;
 int XCAN_ISR_OFFSET ;
 int XCAN_IXR_RXNEMP_MASK ;
 int XCAN_IXR_RXOK_MASK ;
 int XCAN_RXFIFO_OFFSET ;
 int XCAN_RXMSG_2_FRAME_OFFSET (int) ;
 int XCAN_RXMSG_FRAME_OFFSET (int) ;
 int stub1 (struct xcan_priv*,int ,int ) ;
 int stub2 (struct xcan_priv*,int ) ;
 int stub3 (struct xcan_priv*,int ) ;

__attribute__((used)) static int xcan_rx_fifo_get_next_frame(struct xcan_priv *priv)
{
 int offset;

 if (priv->devtype.flags & XCAN_FLAG_RX_FIFO_MULTI) {
  u32 fsr, mask;




  priv->write_reg(priv, XCAN_ICR_OFFSET, XCAN_IXR_RXOK_MASK);

  fsr = priv->read_reg(priv, XCAN_FSR_OFFSET);


  if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
   mask = XCAN_2_FSR_FL_MASK;
  else
   mask = XCAN_FSR_FL_MASK;

  if (!(fsr & mask))
   return -ENOENT;

  if (priv->devtype.flags & XCAN_FLAG_CANFD_2)
   offset =
     XCAN_RXMSG_2_FRAME_OFFSET(fsr & XCAN_2_FSR_RI_MASK);
  else
   offset =
     XCAN_RXMSG_FRAME_OFFSET(fsr & XCAN_FSR_RI_MASK);

 } else {

  if (!(priv->read_reg(priv, XCAN_ISR_OFFSET) &
        XCAN_IXR_RXNEMP_MASK))
   return -ENOENT;


  offset = XCAN_RXFIFO_OFFSET;
 }

 return offset;
}
