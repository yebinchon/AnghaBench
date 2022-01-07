
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct solo_dev {int i2c_id; struct i2c_adapter* i2c_adap; TYPE_2__* pdev; int i2c_mutex; int i2c_wait; int i2c_state; } ;
struct TYPE_3__ {int * parent; } ;
struct i2c_adapter {int retries; struct solo_dev* algo_data; TYPE_1__ dev; int * algo; int name; } ;
struct TYPE_4__ {int dev; } ;


 int I2C_NAME_SIZE ;
 int IIC_STATE_IDLE ;
 char* SOLO6X10_NAME ;
 int SOLO_I2C_ADAPTERS ;
 int SOLO_IIC_CFG ;
 int SOLO_IIC_ENABLE ;
 int SOLO_IIC_PRESCALE (int) ;
 int i2c_add_adapter (struct i2c_adapter*) ;
 int i2c_del_adapter (struct i2c_adapter*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int solo_i2c_algo ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

int solo_i2c_init(struct solo_dev *solo_dev)
{
 int i;
 int ret;

 solo_reg_write(solo_dev, SOLO_IIC_CFG,
         SOLO_IIC_PRESCALE(8) | SOLO_IIC_ENABLE);

 solo_dev->i2c_id = -1;
 solo_dev->i2c_state = IIC_STATE_IDLE;
 init_waitqueue_head(&solo_dev->i2c_wait);
 mutex_init(&solo_dev->i2c_mutex);

 for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
  struct i2c_adapter *adap = &solo_dev->i2c_adap[i];

  snprintf(adap->name, I2C_NAME_SIZE, "%s I2C %d",
    SOLO6X10_NAME, i);
  adap->algo = &solo_i2c_algo;
  adap->algo_data = solo_dev;
  adap->retries = 1;
  adap->dev.parent = &solo_dev->pdev->dev;

  ret = i2c_add_adapter(adap);
  if (ret) {
   adap->algo_data = ((void*)0);
   break;
  }
 }

 if (ret) {
  for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
   if (!solo_dev->i2c_adap[i].algo_data)
    break;
   i2c_del_adapter(&solo_dev->i2c_adap[i]);
   solo_dev->i2c_adap[i].algo_data = ((void*)0);
  }
  return ret;
 }

 return 0;
}
