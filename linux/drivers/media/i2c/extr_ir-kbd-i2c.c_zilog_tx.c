
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rc_dev {struct IR_i2c* priv; } ;
struct code_block {int length; } ;
struct IR_i2c {int lock; TYPE_1__* rc; int tx_c; } ;
typedef int code_block ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int TASK_UNINTERRUPTIBLE ;
 int ZILOG_SEND ;
 int ZILOG_STATUS_OK ;
 int ZILOG_STATUS_SET ;
 int ZILOG_UIR_END ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int i2c_master_recv (int ,int*,int) ;
 int i2c_master_send (int ,int*,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout (int ) ;
 int send_data_block (struct IR_i2c*,int ,struct code_block*) ;
 int set_current_state (int ) ;
 int zilog_ir_format (struct rc_dev*,unsigned int*,unsigned int,struct code_block*) ;

__attribute__((used)) static int zilog_tx(struct rc_dev *rcdev, unsigned int *txbuf,
      unsigned int count)
{
 struct IR_i2c *ir = rcdev->priv;
 struct code_block code_block = { .length = sizeof(code_block) };
 u8 buf[2];
 int ret, i;

 ret = zilog_ir_format(rcdev, txbuf, count, &code_block);
 if (ret)
  return ret;

 ret = mutex_lock_interruptible(&ir->lock);
 if (ret)
  return ret;

 ret = send_data_block(ir, ZILOG_UIR_END, &code_block);
 if (ret)
  goto out_unlock;

 ret = i2c_master_recv(ir->tx_c, buf, 1);
 if (ret != 1) {
  dev_err(&ir->rc->dev, "i2c_master_recv failed with %d\n", ret);
  goto out_unlock;
 }

 dev_dbg(&ir->rc->dev, "code set status: %02x\n", buf[0]);

 if (buf[0] != (ZILOG_STATUS_OK | ZILOG_STATUS_SET)) {
  dev_err(&ir->rc->dev, "unexpected IR TX response %02x\n",
   buf[0]);
  ret = -EIO;
  goto out_unlock;
 }

 buf[0] = 0x00;
 buf[1] = ZILOG_SEND;

 ret = i2c_master_send(ir->tx_c, buf, 2);
 if (ret != 2) {
  dev_err(&ir->rc->dev, "i2c_master_send failed with %d\n", ret);
  if (ret >= 0)
   ret = -EIO;
  goto out_unlock;
 }

 dev_dbg(&ir->rc->dev, "send command sent\n");







 for (i = 0; i < 20; ++i) {
  set_current_state(TASK_UNINTERRUPTIBLE);
  schedule_timeout(msecs_to_jiffies(50));
  ret = i2c_master_send(ir->tx_c, buf, 1);
  if (ret == 1)
   break;
  dev_dbg(&ir->rc->dev,
   "NAK expected: i2c_master_send failed with %d (try %d)\n",
   ret, i + 1);
 }

 if (ret != 1) {
  dev_err(&ir->rc->dev,
   "IR TX chip never got ready: last i2c_master_send failed with %d\n",
   ret);
  if (ret >= 0)
   ret = -EIO;
  goto out_unlock;
 }

 i = i2c_master_recv(ir->tx_c, buf, 1);
 if (i != 1) {
  dev_err(&ir->rc->dev, "i2c_master_recv failed with %d\n", ret);
  ret = -EIO;
  goto out_unlock;
 } else if (buf[0] != ZILOG_STATUS_OK) {
  dev_err(&ir->rc->dev, "unexpected IR TX response #2: %02x\n",
   buf[0]);
  ret = -EIO;
  goto out_unlock;
 }
 dev_dbg(&ir->rc->dev, "transmit complete\n");


 ret = count;
out_unlock:
 mutex_unlock(&ir->lock);

 return ret;
}
