
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vp702x_device_state {int buf_mutex; int * buf; } ;
struct vp702x_adapter_state {int pid_filter_count; int pid_filter_can_bypass; int pid_filter_state; } ;
struct dvb_usb_adapter {TYPE_1__* dev; struct vp702x_adapter_state* priv; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;


 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_set_pid (struct dvb_usb_adapter*,int,int,int) ;
 int vp702x_set_pld_mode (struct dvb_usb_adapter*,int) ;
 int vp702x_usb_in_op (TYPE_1__*,int,int,int ,int *,int) ;

__attribute__((used)) static int vp702x_init_pid_filter(struct dvb_usb_adapter *adap)
{
 struct vp702x_adapter_state *st = adap->priv;
 struct vp702x_device_state *dst = adap->dev->priv;
 int i;
 u8 *b;

 st->pid_filter_count = 8;
 st->pid_filter_can_bypass = 1;
 st->pid_filter_state = 0x00;

 vp702x_set_pld_mode(adap, 1);

 for (i = 0; i < st->pid_filter_count; i++)
  vp702x_set_pid(adap, 0xffff, i, 1);

 mutex_lock(&dst->buf_mutex);
 b = dst->buf;
 memset(b, 0, 10);
 vp702x_usb_in_op(adap->dev, 0xb5, 3, 0, b, 10);
 vp702x_usb_in_op(adap->dev, 0xb5, 0, 0, b, 10);
 vp702x_usb_in_op(adap->dev, 0xb5, 1, 0, b, 10);
 mutex_unlock(&dst->buf_mutex);


 return 0;
}
