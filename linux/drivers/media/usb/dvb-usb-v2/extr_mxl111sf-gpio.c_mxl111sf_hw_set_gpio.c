
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;


 int MXL_GPIO_DIR_OUTPUT ;
 int mxl111sf_hw_do_set_gpio (struct mxl111sf_state*,int,int ,int) ;

__attribute__((used)) static int mxl111sf_hw_set_gpio(struct mxl111sf_state *state, int gpio, int val)
{
 return mxl111sf_hw_do_set_gpio(state, gpio, MXL_GPIO_DIR_OUTPUT, val);
}
