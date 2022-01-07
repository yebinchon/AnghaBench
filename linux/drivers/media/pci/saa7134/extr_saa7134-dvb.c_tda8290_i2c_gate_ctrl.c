
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda1004x_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int addr; int len; int* buf; int flags; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; } ;
struct TYPE_2__ {int i2c_gate; } ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msleep (int) ;
 int pr_warn (char*) ;

__attribute__((used)) static int tda8290_i2c_gate_ctrl( struct dvb_frontend* fe, int enable)
{
 struct tda1004x_state *state = fe->demodulator_priv;

 u8 addr = state->config->i2c_gate;
 static u8 tda8290_close[] = { 0x21, 0xc0};
 static u8 tda8290_open[] = { 0x21, 0x80};
 struct i2c_msg tda8290_msg = {.addr = addr,.flags = 0, .len = 2};
 if (enable) {
  tda8290_msg.buf = tda8290_close;
 } else {
  tda8290_msg.buf = tda8290_open;
 }
 if (i2c_transfer(state->i2c, &tda8290_msg, 1) != 1) {
  pr_warn("could not access tda8290 I2C gate\n");
  return -EIO;
 }
 msleep(20);
 return 0;
}
