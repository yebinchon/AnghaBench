
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct solo_dev {scalar_t__ i2c_state; scalar_t__ i2c_msg_ptr; TYPE_1__* i2c_msg; int i2c_id; } ;
struct TYPE_2__ {int flags; scalar_t__ len; } ;


 int I2C_M_NO_RD_ACK ;
 scalar_t__ IIC_STATE_START ;
 int SOLO_IIC_ACK_EN ;
 int SOLO_IIC_CH_SET (int ) ;
 int SOLO_IIC_CTRL ;
 int SOLO_IIC_READ ;
 int SOLO_IIC_START ;
 int SOLO_IIC_STOP ;
 int SOLO_IIC_WRITE ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static void solo_i2c_flush(struct solo_dev *solo_dev, int wr)
{
 u32 ctrl;

 ctrl = SOLO_IIC_CH_SET(solo_dev->i2c_id);

 if (solo_dev->i2c_state == IIC_STATE_START)
  ctrl |= SOLO_IIC_START;

 if (wr) {
  ctrl |= SOLO_IIC_WRITE;
 } else {
  ctrl |= SOLO_IIC_READ;
  if (!(solo_dev->i2c_msg->flags & I2C_M_NO_RD_ACK))
   ctrl |= SOLO_IIC_ACK_EN;
 }

 if (solo_dev->i2c_msg_ptr == solo_dev->i2c_msg->len)
  ctrl |= SOLO_IIC_STOP;

 solo_reg_write(solo_dev, SOLO_IIC_CTRL, ctrl);
}
