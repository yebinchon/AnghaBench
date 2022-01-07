
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int i2c_adap; } ;
struct i2c_msg {int addr; int * buf; scalar_t__ len; int flags; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int ) ;

__attribute__((used)) static int do_i2c_probe(struct pvr2_hdw *hdw, int addr)
{
 struct i2c_msg msg[1];
 int rc;
 msg[0].addr = 0;
 msg[0].flags = I2C_M_RD;
 msg[0].len = 0;
 msg[0].buf = ((void*)0);
 msg[0].addr = addr;
 rc = i2c_transfer(&hdw->i2c_adap, msg, ARRAY_SIZE(msg));
 return rc == 1;
}
