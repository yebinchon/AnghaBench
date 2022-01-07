
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct netup_ci_state {int ca; int ci_i2c_addr; int i2c_adap; } ;
struct dvb_ca_en50221 {struct netup_ci_state* data; } ;


 int EINVAL ;
 int dvb_ca_en50221_camready_irq (int *,int ) ;
 int msleep (int) ;
 int netup_write_i2c (int ,int ,int ,int*,int) ;
 int udelay (int) ;

int netup_ci_slot_reset(struct dvb_ca_en50221 *en50221, int slot)
{
 struct netup_ci_state *state = en50221->data;
 u8 buf = 0x80;
 int ret;

 if (0 != slot)
  return -EINVAL;

 udelay(500);
 ret = netup_write_i2c(state->i2c_adap, state->ci_i2c_addr,
       0, &buf, 1);

 if (ret != 0)
  return ret;

 udelay(500);

 buf = 0x00;
 ret = netup_write_i2c(state->i2c_adap, state->ci_i2c_addr,
       0, &buf, 1);

 msleep(1000);
 dvb_ca_en50221_camready_irq(&state->ca, 0);

 return 0;

}
