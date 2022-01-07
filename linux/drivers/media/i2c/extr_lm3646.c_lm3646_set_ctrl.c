
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; } ;
struct lm3646_flash {int regmap; } ;


 int EINVAL ;
 int LM3646_FLASH_TOUT_ms_TO_REG (int) ;
 int LM3646_TOTAL_FLASH_BRT_uA_TO_REG (int) ;
 int LM3646_TOTAL_TORCH_BRT_uA_TO_REG (int) ;
 unsigned int MASK_ENABLE ;
 int MASK_FLASH_BR ;
 int MASK_FLASH_TOUT ;
 int MASK_STROBE_SRC ;
 int MASK_TORCH_BR ;
 unsigned int MODE_FLASH ;
 unsigned int MODE_SHDN ;
 int REG_ENABLE ;
 int REG_FLASH_BR ;
 int REG_FLASH_TOUT ;
 int REG_STROBE_SRC ;
 int REG_TORCH_BR ;







 int V4L2_FLASH_LED_MODE_FLASH ;
 int V4L2_FLASH_LED_MODE_NONE ;
 int lm3646_mode_ctrl (struct lm3646_flash*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct lm3646_flash* to_lm3646_flash (struct v4l2_ctrl*) ;

__attribute__((used)) static int lm3646_set_ctrl(struct v4l2_ctrl *ctrl)
{
 struct lm3646_flash *flash = to_lm3646_flash(ctrl);
 unsigned int reg_val;
 int rval = -EINVAL;

 switch (ctrl->id) {
 case 133:

  if (ctrl->val != V4L2_FLASH_LED_MODE_FLASH)
   return lm3646_mode_ctrl(flash, ctrl->val);

  return lm3646_mode_ctrl(flash, V4L2_FLASH_LED_MODE_NONE);

 case 131:
  return regmap_update_bits(flash->regmap,
       REG_STROBE_SRC, MASK_STROBE_SRC,
       (ctrl->val) << 7);

 case 132:


  rval = regmap_read(flash->regmap, REG_ENABLE, &reg_val);
  if (rval < 0 || ((reg_val & MASK_ENABLE) != MODE_SHDN))
   return rval;

  return lm3646_mode_ctrl(flash, V4L2_FLASH_LED_MODE_FLASH);

 case 130:






  rval = regmap_read(flash->regmap, REG_ENABLE, &reg_val);
  if (rval < 0)
   return rval;
  if ((reg_val & MASK_ENABLE) == MODE_FLASH)
   return lm3646_mode_ctrl(flash,
      V4L2_FLASH_LED_MODE_NONE);
  return rval;

 case 129:
  return regmap_update_bits(flash->regmap,
       REG_FLASH_TOUT, MASK_FLASH_TOUT,
       LM3646_FLASH_TOUT_ms_TO_REG
       (ctrl->val));

 case 134:
  return regmap_update_bits(flash->regmap,
       REG_FLASH_BR, MASK_FLASH_BR,
       LM3646_TOTAL_FLASH_BRT_uA_TO_REG
       (ctrl->val));

 case 128:
  return regmap_update_bits(flash->regmap,
       REG_TORCH_BR, MASK_TORCH_BR,
       LM3646_TOTAL_TORCH_BRT_uA_TO_REG
       (ctrl->val) << 4);
 }

 return -EINVAL;
}
