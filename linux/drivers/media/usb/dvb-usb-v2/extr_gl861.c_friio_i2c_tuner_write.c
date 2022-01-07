
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int addr; int buf; } ;
struct friio_priv {TYPE_1__* i2c_client_demod; } ;
struct dvb_usb_device {int udev; } ;
struct TYPE_2__ {int addr; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GL861_REQ_I2C_RAW ;
 int GL861_WRITE ;
 struct friio_priv* d_to_priv (struct dvb_usb_device*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int ,int,int,int*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int
friio_i2c_tuner_write(struct dvb_usb_device *d, struct i2c_msg *msg)
{
 u8 *buf;
 int ret;
 struct friio_priv *priv;

 priv = d_to_priv(d);

 if (msg->len < 1)
  return -EINVAL;

 buf = kmalloc(msg->len + 1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 buf[0] = msg->addr << 1;
 memcpy(buf + 1, msg->buf, msg->len);

 ret = usb_control_msg(d->udev, usb_sndctrlpipe(d->udev, 0),
     GL861_REQ_I2C_RAW, GL861_WRITE,
     priv->i2c_client_demod->addr << (8 + 1),
     0xFE, buf, msg->len + 1, 2000);
 kfree(buf);
 return ret;
}
