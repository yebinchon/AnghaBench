
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int GPIO2_DIR_INPUT ;
 int GPIO_CTRL_SLOTSELEN ;
 int MENELAUS_GPIO_CTRL ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

int menelaus_set_slot_sel(int enable)
{
 int ret;

 mutex_lock(&the_menelaus->lock);
 ret = menelaus_read_reg(MENELAUS_GPIO_CTRL);
 if (ret < 0)
  goto out;
 ret |= GPIO2_DIR_INPUT;
 if (enable)
  ret |= GPIO_CTRL_SLOTSELEN;
 else
  ret &= ~GPIO_CTRL_SLOTSELEN;
 ret = menelaus_write_reg(MENELAUS_GPIO_CTRL, ret);
out:
 mutex_unlock(&the_menelaus->lock);
 return ret;
}
