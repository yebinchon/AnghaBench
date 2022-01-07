
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct TYPE_2__ {int vcore_hw_mode; int lock; struct i2c_client* client; } ;


 int ARRAY_SIZE (int ) ;
 int EINVAL ;
 int MENELAUS_VCORE_CTRL1 ;
 int MENELAUS_VCORE_CTRL3 ;
 int MENELAUS_VCORE_CTRL4 ;
 int VCORE_CTRL1_BYP_COMP ;
 int VCORE_CTRL1_HW_NSW ;
 int dev_dbg (int *,char*,unsigned int,unsigned int) ;
 int menelaus_get_vtg_value (unsigned int,int ,int ) ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;
 int vcore_values ;

int menelaus_set_vcore_hw(unsigned int roof_mV, unsigned int floor_mV)
{
 int fval, rval, val, ret;
 struct i2c_client *c = the_menelaus->client;

 rval = menelaus_get_vtg_value(roof_mV, vcore_values,
          ARRAY_SIZE(vcore_values));
 if (rval < 0)
  return -EINVAL;
 fval = menelaus_get_vtg_value(floor_mV, vcore_values,
          ARRAY_SIZE(vcore_values));
 if (fval < 0)
  return -EINVAL;

 dev_dbg(&c->dev, "Setting VCORE FLOOR to %d mV and ROOF to %d mV\n",
        floor_mV, roof_mV);

 mutex_lock(&the_menelaus->lock);
 ret = menelaus_write_reg(MENELAUS_VCORE_CTRL3, fval);
 if (ret < 0)
  goto out;
 ret = menelaus_write_reg(MENELAUS_VCORE_CTRL4, rval);
 if (ret < 0)
  goto out;
 if (!the_menelaus->vcore_hw_mode) {
  val = menelaus_read_reg(MENELAUS_VCORE_CTRL1);

  val |= (VCORE_CTRL1_HW_NSW | VCORE_CTRL1_BYP_COMP);
  ret = menelaus_write_reg(MENELAUS_VCORE_CTRL1, val);
  the_menelaus->vcore_hw_mode = 1;
 }
 msleep(1);
out:
 mutex_unlock(&the_menelaus->lock);
 return ret;
}
