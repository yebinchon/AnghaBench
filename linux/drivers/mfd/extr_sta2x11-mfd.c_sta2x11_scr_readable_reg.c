
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int STA2X11_SECR_CR ;
 int STA2X11_SECR_FVR0 ;
 int STA2X11_SECR_FVR1 ;
 scalar_t__ __reg_within_range (unsigned int,int ,int ) ;

__attribute__((used)) static bool sta2x11_scr_readable_reg(struct device *dev, unsigned int reg)
{
 return (reg == STA2X11_SECR_CR) ||
  __reg_within_range(reg, STA2X11_SECR_FVR0, STA2X11_SECR_FVR1);
}
