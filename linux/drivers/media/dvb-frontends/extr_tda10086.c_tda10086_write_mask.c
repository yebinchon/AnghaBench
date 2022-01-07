
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10086_state {int dummy; } ;


 int tda10086_read_byte (struct tda10086_state*,int) ;
 int tda10086_write_byte (struct tda10086_state*,int,int) ;

__attribute__((used)) static int tda10086_write_mask(struct tda10086_state *state, int reg, int mask, int data)
{
 int val;


 val = tda10086_read_byte(state, reg);
 if (val < 0)
  return val;


 val = val & ~mask;
 val |= data & 0xff;


 return tda10086_write_byte(state, reg, val);
}
