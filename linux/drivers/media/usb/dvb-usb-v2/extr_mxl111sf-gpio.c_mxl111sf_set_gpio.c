
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int gpio_port_expander; } ;


 int KERN_ERR ;


 int mxl111sf_hw_set_gpio (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*,int,int) ;
 int mxl_printk (int ,char*) ;
 int pca9534_set_gpio (struct mxl111sf_state*,int,int) ;

int mxl111sf_set_gpio(struct mxl111sf_state *state, int gpio, int val)
{
 mxl_debug("(%d, %d)", gpio, val);

 switch (state->gpio_port_expander) {
 default:
  mxl_printk(KERN_ERR,
      "gpio_port_expander undefined, assuming PCA9534");

 case 129:
  return pca9534_set_gpio(state, gpio, val);
 case 128:
  return mxl111sf_hw_set_gpio(state, gpio, val);
 }
}
