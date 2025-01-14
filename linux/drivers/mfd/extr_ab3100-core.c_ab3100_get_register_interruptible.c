
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab3100 {int access_mutex; int dev; int i2c_client; } ;


 int EIO ;
 int dev_err (int ,char*,int) ;
 int i2c_master_recv (int ,int *,int) ;
 int i2c_master_send (int ,int *,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ab3100_get_register_interruptible(struct ab3100 *ab3100,
          u8 reg, u8 *regval)
{
 int err;

 err = mutex_lock_interruptible(&ab3100->access_mutex);
 if (err)
  return err;







 err = i2c_master_send(ab3100->i2c_client, &reg, 1);
 if (err < 0) {
  dev_err(ab3100->dev,
   "write error (send register address): %d\n",
   err);
  goto get_reg_out_unlock;
 } else if (err != 1) {
  dev_err(ab3100->dev,
   "write error (send register address)\n"
   "  %d bytes transferred (expected 1)\n",
   err);
  err = -EIO;
  goto get_reg_out_unlock;
 } else {

  err = 0;
 }

 err = i2c_master_recv(ab3100->i2c_client, regval, 1);
 if (err < 0) {
  dev_err(ab3100->dev,
   "write error (read register): %d\n",
   err);
  goto get_reg_out_unlock;
 } else if (err != 1) {
  dev_err(ab3100->dev,
   "write error (read register)\n"
   "  %d bytes transferred (expected 1)\n",
   err);
  err = -EIO;
  goto get_reg_out_unlock;
 } else {

  err = 0;
 }

 get_reg_out_unlock:
 mutex_unlock(&ab3100->access_mutex);
 return err;
}
