
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx25840_ir_state {int rx_params_lock; TYPE_1__ rx_params; struct i2c_client* c; } ;


 int CNTRL_EDG_NONE ;
 int CX25840_IR_RXCLK_REG ;
 int ENODEV ;
 int RXCLK_RCD ;
 int control_rx_demodulation_enable (struct i2c_client*,int) ;
 int control_rx_enable (struct i2c_client*,int) ;
 int control_rx_s_edge_detection (struct i2c_client*,int ) ;
 int cx25840_write4 (struct i2c_client*,int ,int ) ;
 int filter_rx_s_min_width (struct i2c_client*,int ) ;
 int irqenable_rx (struct v4l2_subdev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_ir_rx_shutdown(struct v4l2_subdev *sd)
{
 struct cx25840_ir_state *ir_state = to_ir_state(sd);
 struct i2c_client *c;

 if (ir_state == ((void*)0))
  return -ENODEV;

 c = ir_state->c;
 mutex_lock(&ir_state->rx_params_lock);


 irqenable_rx(sd, 0);
 control_rx_enable(c, 0);
 control_rx_demodulation_enable(c, 0);
 control_rx_s_edge_detection(c, CNTRL_EDG_NONE);
 filter_rx_s_min_width(c, 0);
 cx25840_write4(c, CX25840_IR_RXCLK_REG, RXCLK_RCD);

 ir_state->rx_params.shutdown = 1;

 mutex_unlock(&ir_state->rx_params_lock);
 return 0;
}
