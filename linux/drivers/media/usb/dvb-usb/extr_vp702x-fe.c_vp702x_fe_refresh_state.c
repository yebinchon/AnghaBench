
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct vp702x_fe_state {int status_check_interval; scalar_t__ next_status_check; void* sig; TYPE_1__* d; void* snr; void* lock; } ;
struct vp702x_device_state {void** buf; int buf_mutex; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;


 int HZ ;
 int READ_STATUS ;
 int READ_TUNER_REG_REQ ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int vp702x_usb_in_op (TYPE_1__*,int ,int,int ,void**,int) ;

__attribute__((used)) static int vp702x_fe_refresh_state(struct vp702x_fe_state *st)
{
 struct vp702x_device_state *dst = st->d->priv;
 u8 *buf;

 if (time_after(jiffies, st->next_status_check)) {
  mutex_lock(&dst->buf_mutex);
  buf = dst->buf;

  vp702x_usb_in_op(st->d, READ_STATUS, 0, 0, buf, 10);
  st->lock = buf[4];

  vp702x_usb_in_op(st->d, READ_TUNER_REG_REQ, 0x11, 0, buf, 1);
  st->snr = buf[0];

  vp702x_usb_in_op(st->d, READ_TUNER_REG_REQ, 0x15, 0, buf, 1);
  st->sig = buf[0];

  mutex_unlock(&dst->buf_mutex);
  st->next_status_check = jiffies + (st->status_check_interval*HZ)/1000;
 }
 return 0;
}
