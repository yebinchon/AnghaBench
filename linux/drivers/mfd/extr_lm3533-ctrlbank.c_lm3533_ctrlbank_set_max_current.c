
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct lm3533_ctrlbank {int dev; int lm3533; } ;


 int EINVAL ;
 scalar_t__ LM3533_MAX_CURRENT_MAX ;
 scalar_t__ LM3533_MAX_CURRENT_MIN ;
 scalar_t__ LM3533_MAX_CURRENT_STEP ;
 int LM3533_REG_MAX_CURRENT_BASE ;
 int dev_err (int ,char*) ;
 scalar_t__ lm3533_ctrlbank_get_reg (struct lm3533_ctrlbank*,int ) ;
 int lm3533_write (int ,scalar_t__,scalar_t__) ;

int lm3533_ctrlbank_set_max_current(struct lm3533_ctrlbank *cb, u16 imax)
{
 u8 reg;
 u8 val;
 int ret;

 if (imax < LM3533_MAX_CURRENT_MIN || imax > LM3533_MAX_CURRENT_MAX)
  return -EINVAL;

 val = (imax - LM3533_MAX_CURRENT_MIN) / LM3533_MAX_CURRENT_STEP;

 reg = lm3533_ctrlbank_get_reg(cb, LM3533_REG_MAX_CURRENT_BASE);
 ret = lm3533_write(cb->lm3533, reg, val);
 if (ret)
  dev_err(cb->dev, "failed to set max current\n");

 return ret;
}
