
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int EINVAL ;
 int MCT_CTRL2_S1CD_BUFEN ;
 int MCT_CTRL2_S1CD_DBEN ;
 int MCT_CTRL2_S2CD_BEN ;
 int MCT_CTRL2_S2CD_BUFEN ;
 int MCT_CTRL2_VS2_SEL_D0 ;
 int MCT_CTRL2_VS2_SEL_D1 ;
 int MCT_CTRL3_S1_AUTO_EN ;
 int MCT_CTRL3_S2_AUTO_EN ;
 int MCT_CTRL3_SLOT1_EN ;
 int MCT_CTRL3_SLOT2_EN ;
 int MENELAUS_MCT_CTRL2 ;
 int MENELAUS_MCT_CTRL3 ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

int menelaus_set_mmc_slot(int slot, int enable, int power, int cd_en)
{
 int ret, val;

 if (slot != 1 && slot != 2)
  return -EINVAL;
 if (power >= 3)
  return -EINVAL;

 mutex_lock(&the_menelaus->lock);

 ret = menelaus_read_reg(MENELAUS_MCT_CTRL2);
 if (ret < 0)
  goto out;
 val = ret;
 if (slot == 1) {
  if (cd_en)
   val |= MCT_CTRL2_S1CD_BUFEN | MCT_CTRL2_S1CD_DBEN;
  else
   val &= ~(MCT_CTRL2_S1CD_BUFEN | MCT_CTRL2_S1CD_DBEN);
 } else {
  if (cd_en)
   val |= MCT_CTRL2_S2CD_BUFEN | MCT_CTRL2_S2CD_BEN;
  else
   val &= ~(MCT_CTRL2_S2CD_BUFEN | MCT_CTRL2_S2CD_BEN);
 }
 ret = menelaus_write_reg(MENELAUS_MCT_CTRL2, val);
 if (ret < 0)
  goto out;

 ret = menelaus_read_reg(MENELAUS_MCT_CTRL3);
 if (ret < 0)
  goto out;
 val = ret;
 if (slot == 1) {
  if (enable)
   val |= MCT_CTRL3_SLOT1_EN;
  else
   val &= ~MCT_CTRL3_SLOT1_EN;
 } else {
  int b;

  if (enable)
   val |= MCT_CTRL3_SLOT2_EN;
  else
   val &= ~MCT_CTRL3_SLOT2_EN;
  b = menelaus_read_reg(MENELAUS_MCT_CTRL2);
  b &= ~(MCT_CTRL2_VS2_SEL_D0 | MCT_CTRL2_VS2_SEL_D1);
  b |= power;
  ret = menelaus_write_reg(MENELAUS_MCT_CTRL2, b);
  if (ret < 0)
   goto out;
 }

 val &= ~(MCT_CTRL3_S1_AUTO_EN | MCT_CTRL3_S2_AUTO_EN);
 ret = menelaus_write_reg(MENELAUS_MCT_CTRL3, val);
out:
 mutex_unlock(&the_menelaus->lock);
 return ret;
}
