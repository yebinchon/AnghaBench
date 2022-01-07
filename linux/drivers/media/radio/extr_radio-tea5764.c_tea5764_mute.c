
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5764_regs {int tnctrl; } ;
struct tea5764_device {struct tea5764_regs regs; } ;


 int TEA5764_TNCTRL_MU ;
 int tea5764_i2c_write (struct tea5764_device*) ;

__attribute__((used)) static void tea5764_mute(struct tea5764_device *radio, int on)
{
 struct tea5764_regs *r = &radio->regs;
 int tnctrl = r->tnctrl;

 if (on)
  r->tnctrl |= TEA5764_TNCTRL_MU;
 else
  r->tnctrl &= ~TEA5764_TNCTRL_MU;
 if (tnctrl != r->tnctrl)
  tea5764_i2c_write(radio);
}
