
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxl111sf_state {TYPE_1__* d; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int PCA9534_I2C_ADDR ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int mxl_debug (char*) ;

__attribute__((used)) static int pca9534_init_port_expander(struct mxl111sf_state *state)
{
 u8 w[2] = { 1, 0x07 };

 struct i2c_msg msg = {
  .addr = PCA9534_I2C_ADDR,
  .flags = 0, .buf = w, .len = 2
 };

 mxl_debug("()");

 i2c_transfer(&state->d->i2c_adap, &msg, 1);


 w[0] = 3;
 w[1] = 0;

 i2c_transfer(&state->d->i2c_adap, &msg, 1);

 return 0;
}
