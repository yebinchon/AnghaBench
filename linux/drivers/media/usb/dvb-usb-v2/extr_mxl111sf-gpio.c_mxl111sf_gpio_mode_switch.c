
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;




 int msleep (int) ;
 int mxl111sf_init_port_expander (struct mxl111sf_state*) ;
 int mxl111sf_set_gpio (struct mxl111sf_state*,int,int) ;
 int mxl_debug (char*,unsigned int) ;

int mxl111sf_gpio_mode_switch(struct mxl111sf_state *state, unsigned int mode)
{







 mxl_debug("(%d)", mode);

 switch (mode) {
 case 128:
  mxl111sf_set_gpio(state, 4, 0);
  mxl111sf_set_gpio(state, 5, 0);
  msleep(50);
  mxl111sf_set_gpio(state, 7, 1);
  msleep(50);
  mxl111sf_set_gpio(state, 6, 1);
  msleep(50);

  mxl111sf_set_gpio(state, 3, 0);
  break;
 case 129:
  mxl111sf_set_gpio(state, 6, 0);
  mxl111sf_set_gpio(state, 7, 0);
  msleep(50);
  mxl111sf_set_gpio(state, 5, 1);
  msleep(50);
  mxl111sf_set_gpio(state, 4, 1);
  msleep(50);
  mxl111sf_set_gpio(state, 3, 1);
  break;
 default:
  mxl111sf_init_port_expander(state);
  break;
 }
 return 0;
}
