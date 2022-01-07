
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TNCTRL_MST ;
 int V4L2_TUNER_MODE_MONO ;
 int tea5764_i2c_write (struct tea5764_device*) ;

__attribute__((used)) static void tea5764_set_audout_mode(struct tea5764_device *radio, int audmode)
{
 struct tea5764_regs *r = &radio->regs;
 int tnctrl = r->tnctrl;

 if (audmode == V4L2_TUNER_MODE_MONO)
  r->tnctrl |= TEA5764_TNCTRL_MST;
 else
  r->tnctrl &= ~TEA5764_TNCTRL_MST;
 if (tnctrl != r->tnctrl)
  tea5764_i2c_write(radio);
}
