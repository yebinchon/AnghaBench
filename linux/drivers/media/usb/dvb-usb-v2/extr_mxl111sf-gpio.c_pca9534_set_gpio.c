
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mxl111sf_state {TYPE_1__* d; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_adap; } ;


 int I2C_M_RD ;
 int PCA9534_I2C_ADDR ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int mxl_debug (char*,int,int) ;

__attribute__((used)) static int pca9534_set_gpio(struct mxl111sf_state *state, int gpio, int val)
{
 u8 w[2] = { 1, 0 };
 u8 r = 0;
 struct i2c_msg msg[] = {
  { .addr = PCA9534_I2C_ADDR,
    .flags = 0, .buf = w, .len = 1 },
  { .addr = PCA9534_I2C_ADDR,
    .flags = I2C_M_RD, .buf = &r, .len = 1 },
 };

 mxl_debug("(%d, %d)", gpio, val);


 i2c_transfer(&state->d->i2c_adap, msg, 2);


 msg[0].len = 2;



 w[1] = r;


 w[1] &= ~(1 << gpio);


 w[1] |= ((val ? 1 : 0) << gpio);


 i2c_transfer(&state->d->i2c_adap, &msg[0], 1);

 return 0;
}
