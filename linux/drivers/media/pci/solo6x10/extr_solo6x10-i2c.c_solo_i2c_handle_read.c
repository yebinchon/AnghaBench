
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct solo_dev {scalar_t__ i2c_msg_ptr; scalar_t__ i2c_msg_num; TYPE_1__* i2c_msg; } ;
struct TYPE_2__ {scalar_t__ len; int flags; } ;


 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int solo_i2c_flush (struct solo_dev*,int ) ;
 int solo_i2c_start (struct solo_dev*) ;
 int solo_i2c_stop (struct solo_dev*) ;

__attribute__((used)) static int solo_i2c_handle_read(struct solo_dev *solo_dev)
{
prepare_read:
 if (solo_dev->i2c_msg_ptr != solo_dev->i2c_msg->len) {
  solo_i2c_flush(solo_dev, 0);
  return 0;
 }

 solo_dev->i2c_msg_ptr = 0;
 solo_dev->i2c_msg++;
 solo_dev->i2c_msg_num--;

 if (solo_dev->i2c_msg_num == 0) {
  solo_i2c_stop(solo_dev);
  return 0;
 }

 if (!(solo_dev->i2c_msg->flags & I2C_M_NOSTART)) {
  solo_i2c_start(solo_dev);
 } else {
  if (solo_dev->i2c_msg->flags & I2C_M_RD)
   goto prepare_read;
  else
   solo_i2c_stop(solo_dev);
 }

 return 0;
}
