
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct solo_dev {scalar_t__ i2c_id; int i2c_state; size_t i2c_msg_ptr; TYPE_1__* i2c_msg; } ;
struct TYPE_2__ {int flags; void** buf; } ;


 scalar_t__ CHK_FLAGS (void*,int) ;
 int EINVAL ;
 int ENXIO ;
 int I2C_M_RD ;



 int SOLO_IIC_CTRL ;
 int SOLO_IIC_RXD ;
 int SOLO_IIC_STATE_SIG_ERR ;
 int SOLO_IIC_STATE_TRNS ;
 int solo_i2c_handle_read (struct solo_dev*) ;
 int solo_i2c_handle_write (struct solo_dev*) ;
 int solo_i2c_stop (struct solo_dev*) ;
 void* solo_reg_read (struct solo_dev*,int ) ;

int solo_i2c_isr(struct solo_dev *solo_dev)
{
 u32 status = solo_reg_read(solo_dev, SOLO_IIC_CTRL);
 int ret = -EINVAL;


 if (CHK_FLAGS(status, SOLO_IIC_STATE_TRNS | SOLO_IIC_STATE_SIG_ERR)
     || solo_dev->i2c_id < 0) {
  solo_i2c_stop(solo_dev);
  return -ENXIO;
 }

 switch (solo_dev->i2c_state) {
 case 129:
  if (solo_dev->i2c_msg->flags & I2C_M_RD) {
   solo_dev->i2c_state = 130;
   ret = solo_i2c_handle_read(solo_dev);
   break;
  }

  solo_dev->i2c_state = 128;

 case 128:
  ret = solo_i2c_handle_write(solo_dev);
  break;

 case 130:
  solo_dev->i2c_msg->buf[solo_dev->i2c_msg_ptr] =
   solo_reg_read(solo_dev, SOLO_IIC_RXD);
  solo_dev->i2c_msg_ptr++;

  ret = solo_i2c_handle_read(solo_dev);
  break;

 default:
  solo_i2c_stop(solo_dev);
 }

 return ret;
}
