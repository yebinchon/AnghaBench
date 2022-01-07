
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int port_expander_addr; int gpio_port_expander; } ;


 int KERN_ERR ;


 int mxl111sf_hw_gpio_initialize (struct mxl111sf_state*) ;
 int mxl111sf_probe_port_expander (struct mxl111sf_state*) ;
 int mxl_debug (char*) ;
 int mxl_printk (int ,char*) ;
 int pca9534_init_port_expander (struct mxl111sf_state*) ;

int mxl111sf_init_port_expander(struct mxl111sf_state *state)
{
 mxl_debug("()");

 if (0x00 == state->port_expander_addr)
  mxl111sf_probe_port_expander(state);

 switch (state->gpio_port_expander) {
 default:
  mxl_printk(KERN_ERR,
      "gpio_port_expander undefined, assuming PCA9534");

 case 129:
  return pca9534_init_port_expander(state);
 case 128:
  return mxl111sf_hw_gpio_initialize(state);
 }
}
