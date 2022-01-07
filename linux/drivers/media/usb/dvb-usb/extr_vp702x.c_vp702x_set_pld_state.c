
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vp702x_device_state {int* buf; int buf_mutex; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;


 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_usb_in_op (TYPE_1__*,int,int,int ,int*,int) ;

__attribute__((used)) static int vp702x_set_pld_state(struct dvb_usb_adapter *adap, u8 state)
{
 int ret;
 struct vp702x_device_state *st = adap->dev->priv;
 u8 *buf;

 mutex_lock(&st->buf_mutex);

 buf = st->buf;
 memset(buf, 0, 16);
 ret = vp702x_usb_in_op(adap->dev, 0xe0, (state << 8) | 0x0f,
   0, buf, 16);

 mutex_unlock(&st->buf_mutex);

 return ret;
}
