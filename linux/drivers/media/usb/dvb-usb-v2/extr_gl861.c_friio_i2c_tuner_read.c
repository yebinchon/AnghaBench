
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int buf; } ;
struct friio_priv {TYPE_1__* i2c_client_demod; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 struct friio_priv* d_to_priv (struct dvb_usb_device*) ;
 int gl861_i2c_read_ex (struct dvb_usb_device*,int ,int ,int ) ;

__attribute__((used)) static int
friio_i2c_tuner_read(struct dvb_usb_device *d, struct i2c_msg *msg)
{
 struct friio_priv *priv;
 u8 addr;

 priv = d_to_priv(d);
 addr = priv->i2c_client_demod->addr;
 return gl861_i2c_read_ex(d, addr, msg->buf, msg->len);
}
