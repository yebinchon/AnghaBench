
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cx23888_ir_fifo_rec {int hw_fifo_data; } ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int rx_kfifo_lock; int rx_kfifo; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int CNTRL_RFE ;
 int CNTRL_RXE ;
 int CX23888_IR_CNTRL_REG ;
 int CX23888_IR_FIFO_REG ;
 int CX23888_IR_IRQEN_REG ;
 int CX23888_IR_RX_KFIFO_SIZE ;
 int CX23888_IR_STATS_REG ;
 int FIFO_RX_DEPTH ;
 int FIFO_RX_NDV ;
 int IRQEN_ROE ;
 int IRQEN_RSE ;
 int IRQEN_RTE ;
 int IRQEN_TSE ;
 int STATS_RBY ;
 int STATS_ROR ;
 int STATS_RSR ;
 int STATS_RTO ;
 int STATS_TBY ;
 int STATS_TSR ;
 int V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED ;
 int V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN ;
 int V4L2_SUBDEV_IR_RX_NOTIFY ;
 int V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN ;
 int V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_TX_NOTIFY ;
 int cx23888_ir_read4 (struct cx23885_dev*,int ) ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int) ;
 int ir_888_debug ;
 int irqenable_tx (struct cx23885_dev*,int ) ;
 unsigned int kfifo_in_locked (int *,unsigned char*,unsigned int,int *) ;
 int kfifo_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*,char*,char*,char*,...) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,int*) ;

__attribute__((used)) static int cx23888_ir_irq_handler(struct v4l2_subdev *sd, u32 status,
      bool *handled)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;
 unsigned long flags;

 u32 cntrl = cx23888_ir_read4(dev, CX23888_IR_CNTRL_REG);
 u32 irqen = cx23888_ir_read4(dev, CX23888_IR_IRQEN_REG);
 u32 stats = cx23888_ir_read4(dev, CX23888_IR_STATS_REG);

 union cx23888_ir_fifo_rec rx_data[FIFO_RX_DEPTH];
 unsigned int i, j, k;
 u32 events, v;
 int tsr, rsr, rto, ror, tse, rse, rte, roe, kror;

 tsr = stats & STATS_TSR;
 rsr = stats & STATS_RSR;
 rto = stats & STATS_RTO;
 ror = stats & STATS_ROR;

 tse = irqen & IRQEN_TSE;
 rse = irqen & IRQEN_RSE;
 rte = irqen & IRQEN_RTE;
 roe = irqen & IRQEN_ROE;

 *handled = 0;
 v4l2_dbg(2, ir_888_debug, sd, "IRQ Status:  %s %s %s %s %s %s\n",
   tsr ? "tsr" : "   ", rsr ? "rsr" : "   ",
   rto ? "rto" : "   ", ror ? "ror" : "   ",
   stats & STATS_TBY ? "tby" : "   ",
   stats & STATS_RBY ? "rby" : "   ");

 v4l2_dbg(2, ir_888_debug, sd, "IRQ Enables: %s %s %s %s\n",
   tse ? "tse" : "   ", rse ? "rse" : "   ",
   rte ? "rte" : "   ", roe ? "roe" : "   ");




 if (tse && tsr) {
  irqenable_tx(dev, 0);
  events = V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ;
  v4l2_subdev_notify(sd, V4L2_SUBDEV_IR_TX_NOTIFY, &events);
  *handled = 1;
 }




 kror = 0;
 if ((rse && rsr) || (rte && rto)) {





  for (i = 0, v = FIFO_RX_NDV;
       (v & FIFO_RX_NDV) && !kror; i = 0) {
   for (j = 0;
        (v & FIFO_RX_NDV) && j < FIFO_RX_DEPTH; j++) {
    v = cx23888_ir_read4(dev, CX23888_IR_FIFO_REG);
    rx_data[i].hw_fifo_data = v & ~FIFO_RX_NDV;
    i++;
   }
   if (i == 0)
    break;
   j = i * sizeof(union cx23888_ir_fifo_rec);
   k = kfifo_in_locked(&state->rx_kfifo,
          (unsigned char *) rx_data, j,
          &state->rx_kfifo_lock);
   if (k != j)
    kror++;
  }
  *handled = 1;
 }

 events = 0;
 v = 0;
 if (kror) {
  events |= V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN;
  v4l2_err(sd, "IR receiver software FIFO overrun\n");
 }
 if (roe && ror) {




  v |= CNTRL_RFE;
  events |= V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN;
  v4l2_err(sd, "IR receiver hardware FIFO overrun\n");
 }
 if (rte && rto) {




  v |= CNTRL_RXE;
  events |= V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED;
 }
 if (v) {

  cx23888_ir_write4(dev, CX23888_IR_CNTRL_REG, cntrl & ~v);
  cx23888_ir_write4(dev, CX23888_IR_CNTRL_REG, cntrl);
  *handled = 1;
 }

 spin_lock_irqsave(&state->rx_kfifo_lock, flags);
 if (kfifo_len(&state->rx_kfifo) >= CX23888_IR_RX_KFIFO_SIZE / 2)
  events |= V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ;
 spin_unlock_irqrestore(&state->rx_kfifo_lock, flags);

 if (events)
  v4l2_subdev_notify(sd, V4L2_SUBDEV_IR_RX_NOTIFY, &events);
 return 0;
}
