
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int i2c_id; int i2c_msg_num; scalar_t__ i2c_state; int i2c_mutex; int i2c_wait; scalar_t__ i2c_msg_ptr; struct i2c_msg* i2c_msg; struct i2c_adapter* i2c_adap; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct solo_dev* algo_data; } ;


 int DEFINE_WAIT (int ) ;
 int HZ ;
 scalar_t__ IIC_STATE_IDLE ;
 scalar_t__ IIC_STATE_STOP ;
 int SOLO_I2C_ADAPTERS ;
 int SOLO_IIC_CTRL ;
 int SOLO_IRQ_IIC ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 unsigned long schedule_timeout (unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 int solo_i2c_start (struct solo_dev*) ;
 int solo_irq_on (struct solo_dev*,int ) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;
 int wait ;

__attribute__((used)) static int solo_i2c_master_xfer(struct i2c_adapter *adap,
    struct i2c_msg msgs[], int num)
{
 struct solo_dev *solo_dev = adap->algo_data;
 unsigned long timeout;
 int ret;
 int i;
 DEFINE_WAIT(wait);

 for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
  if (&solo_dev->i2c_adap[i] == adap)
   break;
 }

 if (i == SOLO_I2C_ADAPTERS)
  return num;

 mutex_lock(&solo_dev->i2c_mutex);
 solo_dev->i2c_id = i;
 solo_dev->i2c_msg = msgs;
 solo_dev->i2c_msg_num = num;
 solo_dev->i2c_msg_ptr = 0;

 solo_reg_write(solo_dev, SOLO_IIC_CTRL, 0);
 solo_irq_on(solo_dev, SOLO_IRQ_IIC);
 solo_i2c_start(solo_dev);

 timeout = HZ / 2;

 for (;;) {
  prepare_to_wait(&solo_dev->i2c_wait, &wait,
    TASK_INTERRUPTIBLE);

  if (solo_dev->i2c_state == IIC_STATE_STOP)
   break;

  timeout = schedule_timeout(timeout);
  if (!timeout)
   break;

  if (signal_pending(current))
   break;
 }

 finish_wait(&solo_dev->i2c_wait, &wait);
 ret = num - solo_dev->i2c_msg_num;
 solo_dev->i2c_state = IIC_STATE_IDLE;
 solo_dev->i2c_id = -1;

 mutex_unlock(&solo_dev->i2c_mutex);

 return ret;
}
