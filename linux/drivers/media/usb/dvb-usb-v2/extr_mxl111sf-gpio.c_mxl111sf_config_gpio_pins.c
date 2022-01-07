
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl_gpio_cfg {int pin; int dir; int val; } ;
struct mxl111sf_state {int dummy; } ;


 int EINVAL ;
 scalar_t__ MXL_GPIO_DIR_OUTPUT ;
 int MXL_GPIO_MUX_REG_0 ;
 int MXL_GPIO_MUX_REG_1 ;
 int MXL_GPIO_MUX_REG_2 ;
 int mxl111sf_get_gpi_state (struct mxl111sf_state*,int,int *) ;
 int mxl111sf_read_reg (struct mxl111sf_state*,int ,int*) ;
 int mxl111sf_set_gpo_state (struct mxl111sf_state*,int,int ) ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int ,int) ;
 int mxl_debug_adv (char*,int,int) ;
 int mxl_fail (int) ;

__attribute__((used)) static int mxl111sf_config_gpio_pins(struct mxl111sf_state *state,
         struct mxl_gpio_cfg *gpio_cfg)
{
 int ret;
 u8 tmp;

 mxl_debug_adv("(%d, %d)", gpio_cfg->pin, gpio_cfg->dir);

 switch (gpio_cfg->pin) {
 case 0:
 case 1:
 case 2:
 case 3:
  ret = mxl111sf_read_reg(state, MXL_GPIO_MUX_REG_0, &tmp);
  if (mxl_fail(ret))
   goto fail;
  tmp &= ~(1 << (gpio_cfg->pin + 4));
  tmp |= (gpio_cfg->dir << (gpio_cfg->pin + 4));
  ret = mxl111sf_write_reg(state, MXL_GPIO_MUX_REG_0, tmp);
  if (mxl_fail(ret))
   goto fail;
  break;
 case 4:
 case 5:
 case 6:
 case 7:
  ret = mxl111sf_read_reg(state, MXL_GPIO_MUX_REG_1, &tmp);
  if (mxl_fail(ret))
   goto fail;
  tmp &= ~(1 << gpio_cfg->pin);
  tmp |= (gpio_cfg->dir << gpio_cfg->pin);
  ret = mxl111sf_write_reg(state, MXL_GPIO_MUX_REG_1, tmp);
  if (mxl_fail(ret))
   goto fail;
  break;
 case 8:
 case 9:
 case 10:
  ret = mxl111sf_read_reg(state, MXL_GPIO_MUX_REG_2, &tmp);
  if (mxl_fail(ret))
   goto fail;
  tmp &= ~(1 << (gpio_cfg->pin - 3));
  tmp |= (gpio_cfg->dir << (gpio_cfg->pin - 3));
  ret = mxl111sf_write_reg(state, MXL_GPIO_MUX_REG_2, tmp);
  if (mxl_fail(ret))
   goto fail;
  break;
 default:
  return -EINVAL;
 }

 ret = (MXL_GPIO_DIR_OUTPUT == gpio_cfg->dir) ?
  mxl111sf_set_gpo_state(state,
           gpio_cfg->pin, gpio_cfg->val) :
  mxl111sf_get_gpi_state(state,
           gpio_cfg->pin, &gpio_cfg->val);
 mxl_fail(ret);
fail:
 return ret;
}
