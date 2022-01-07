
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk1160 {int dummy; } ;


 int STK1160_POSV_L ;
 int STK1160_POSV_L_ACDOUT ;
 int stk1160_read_reg (struct stk1160*,int ,int*) ;

__attribute__((used)) static int stk1160_has_audio(struct stk1160 *dev)
{
 u8 value;

 stk1160_read_reg(dev, STK1160_POSV_L, &value);
 return !(value & STK1160_POSV_L_ACDOUT);
}
