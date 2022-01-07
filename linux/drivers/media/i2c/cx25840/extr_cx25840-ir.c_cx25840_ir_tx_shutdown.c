
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx25840_ir_state {int tx_params_lock; TYPE_1__ tx_params; struct i2c_client* c; } ;


 int CX25840_IR_TXCLK_REG ;
 int ENODEV ;
 int TXCLK_TCD ;
 int control_tx_enable (struct i2c_client*,int) ;
 int control_tx_modulation_enable (struct i2c_client*,int) ;
 int cx25840_write4 (struct i2c_client*,int ,int ) ;
 int irqenable_tx (struct v4l2_subdev*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_ir_tx_shutdown(struct v4l2_subdev *sd)
{
 struct cx25840_ir_state *ir_state = to_ir_state(sd);
 struct i2c_client *c;

 if (ir_state == ((void*)0))
  return -ENODEV;

 c = ir_state->c;
 mutex_lock(&ir_state->tx_params_lock);


 irqenable_tx(sd, 0);
 control_tx_enable(c, 0);
 control_tx_modulation_enable(c, 0);
 cx25840_write4(c, CX25840_IR_TXCLK_REG, TXCLK_TCD);

 ir_state->tx_params.shutdown = 1;

 mutex_unlock(&ir_state->tx_params_lock);
 return 0;
}
