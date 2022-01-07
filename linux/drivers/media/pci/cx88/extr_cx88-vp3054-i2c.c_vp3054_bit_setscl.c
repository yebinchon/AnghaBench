
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp3054_i2c_state {int state; } ;
struct cx88_core {int dummy; } ;
struct cx8802_dev {struct vp3054_i2c_state* vp3054; struct cx88_core* core; } ;


 int MO_GP0_IO ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;

__attribute__((used)) static void vp3054_bit_setscl(void *data, int state)
{
 struct cx8802_dev *dev = data;
 struct cx88_core *core = dev->core;
 struct vp3054_i2c_state *vp3054_i2c = dev->vp3054;

 if (state) {
  vp3054_i2c->state |= 0x0001;
  vp3054_i2c->state &= ~0x0100;
 } else {
  vp3054_i2c->state &= ~0x0001;
  vp3054_i2c->state |= 0x0100;
 }
 cx_write(MO_GP0_IO, 0x010000 | vp3054_i2c->state);
 cx_read(MO_GP0_IO);
}
