
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct v4l2_ctrl {scalar_t__ id; TYPE_1__ cur; } ;
struct lm3560_flash {int lock; int regmap; } ;
typedef int s32 ;
typedef enum lm3560_led_id { ____Placeholder_lm3560_led_id } lm3560_led_id ;


 int EINVAL ;
 unsigned int FAULT_OVERTEMP ;
 unsigned int FAULT_SHORT_CIRCUIT ;
 unsigned int FAULT_TIMEOUT ;
 int REG_FLAG ;
 scalar_t__ V4L2_CID_FLASH_FAULT ;
 int V4L2_FLASH_FAULT_OVER_TEMPERATURE ;
 int V4L2_FLASH_FAULT_SHORT_CIRCUIT ;
 int V4L2_FLASH_FAULT_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 struct lm3560_flash* to_lm3560_flash (struct v4l2_ctrl*,int) ;

__attribute__((used)) static int lm3560_get_ctrl(struct v4l2_ctrl *ctrl, enum lm3560_led_id led_no)
{
 struct lm3560_flash *flash = to_lm3560_flash(ctrl, led_no);
 int rval = -EINVAL;

 mutex_lock(&flash->lock);

 if (ctrl->id == V4L2_CID_FLASH_FAULT) {
  s32 fault = 0;
  unsigned int reg_val;
  rval = regmap_read(flash->regmap, REG_FLAG, &reg_val);
  if (rval < 0)
   goto out;
  if (reg_val & FAULT_SHORT_CIRCUIT)
   fault |= V4L2_FLASH_FAULT_SHORT_CIRCUIT;
  if (reg_val & FAULT_OVERTEMP)
   fault |= V4L2_FLASH_FAULT_OVER_TEMPERATURE;
  if (reg_val & FAULT_TIMEOUT)
   fault |= V4L2_FLASH_FAULT_TIMEOUT;
  ctrl->cur.val = fault;
 }

out:
 mutex_unlock(&flash->lock);
 return rval;
}
