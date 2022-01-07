
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {int dummy; } ;


 int ENODEV ;
 scalar_t__ write_regs (struct stv*,int ,int) ;

__attribute__((used)) static int attach_init(struct stv *state)
{
 if (write_regs(state, 0, 11))
  return -ENODEV;
 return 0;
}
