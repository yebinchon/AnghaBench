
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int mxl111sf_hw_set_gpio (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_hw_gpio_initialize(struct mxl111sf_state *state)
{
 u8 gpioval = 0x07;
 int i, ret;

 mxl_debug("()");

 for (i = 3; i < 8; i++) {
  ret = mxl111sf_hw_set_gpio(state, i, (gpioval >> i) & 0x01);
  if (mxl_fail(ret))
   break;
 }

 return ret;
}
