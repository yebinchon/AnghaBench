
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx23888_ir_state {int rx_params_lock; TYPE_1__ rx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;


 int CNTRL_EDG_NONE ;
 int CX23888_IR_RXCLK_REG ;
 int RXCLK_RCD ;
 int control_rx_demodulation_enable (struct cx23885_dev*,int) ;
 int control_rx_enable (struct cx23885_dev*,int) ;
 int control_rx_s_edge_detection (struct cx23885_dev*,int ) ;
 int cx23888_ir_write4 (struct cx23885_dev*,int ,int ) ;
 int filter_rx_s_min_width (struct cx23885_dev*,int ) ;
 int irqenable_rx (struct cx23885_dev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_rx_shutdown(struct v4l2_subdev *sd)
{
 struct cx23888_ir_state *state = to_state(sd);
 struct cx23885_dev *dev = state->dev;

 mutex_lock(&state->rx_params_lock);


 irqenable_rx(dev, 0);
 control_rx_enable(dev, 0);
 control_rx_demodulation_enable(dev, 0);
 control_rx_s_edge_detection(dev, CNTRL_EDG_NONE);
 filter_rx_s_min_width(dev, 0);
 cx23888_ir_write4(dev, CX23888_IR_RXCLK_REG, RXCLK_RCD);

 state->rx_params.shutdown = 1;

 mutex_unlock(&state->rx_params_lock);
 return 0;
}
