
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_ctrl {int id; int val; } ;
struct lm3560_flash {int led_mode; int lock; int regmap; } ;
typedef enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;


 int EBUSY ;
 int EINVAL ;
 int LM3560_FLASH_TOUT_ms_TO_REG (int) ;
 int REG_CONFIG1 ;
 int REG_FLASH_TOUT ;







 int V4L2_FLASH_LED_MODE_FLASH ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int lm3560_flash_brt_ctrl (struct lm3560_flash*,int,int) ;
 int lm3560_mode_ctrl (struct lm3560_flash*) ;
 int lm3560_torch_brt_ctrl (struct lm3560_flash*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct lm3560_flash* to_lm3560_flash (struct v4l2_ctrl*,int) ;

__attribute__((used)) static int lm3560_set_ctrl(struct v4l2_ctrl *ctrl, enum lm3560_led_id led_no)
{
 struct lm3560_flash *flash = to_lm3560_flash(ctrl, led_no);
 u8 tout_bits;
 int rval = -EINVAL;

 mutex_lock(&flash->lock);

 switch (ctrl->id) {
 case 133:
  flash->led_mode = ctrl->val;
  if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH)
   rval = lm3560_mode_ctrl(flash);
  break;

 case 131:
  rval = regmap_update_bits(flash->regmap,
       REG_CONFIG1, 0x04, (ctrl->val) << 2);
  if (rval < 0)
   goto err_out;
  break;

 case 132:
  if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH) {
   rval = -EBUSY;
   goto err_out;
  }
  flash->led_mode = V4L2_FLASH_LED_MODE_FLASH;
  rval = lm3560_mode_ctrl(flash);
  break;

 case 130:
  if (flash->led_mode != V4L2_FLASH_LED_MODE_FLASH) {
   rval = -EBUSY;
   goto err_out;
  }
  flash->led_mode = V4L2_FLASH_LED_MODE_NONE;
  rval = lm3560_mode_ctrl(flash);
  break;

 case 129:
  tout_bits = LM3560_FLASH_TOUT_ms_TO_REG(ctrl->val);
  rval = regmap_update_bits(flash->regmap,
       REG_FLASH_TOUT, 0x1f, tout_bits);
  break;

 case 134:
  rval = lm3560_flash_brt_ctrl(flash, led_no, ctrl->val);
  break;

 case 128:
  rval = lm3560_torch_brt_ctrl(flash, led_no, ctrl->val);
  break;
 }

err_out:
 mutex_unlock(&flash->lock);
 return rval;
}
