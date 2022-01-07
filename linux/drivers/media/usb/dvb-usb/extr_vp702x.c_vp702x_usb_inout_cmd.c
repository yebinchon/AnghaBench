
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vp702x_device_state {int buf_len; int* buf; int buf_mutex; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int info (char*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int max (int,int) ;
 int memcpy (int*,int*,int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_usb_inout_op (struct dvb_usb_device*,int*,int,int*,int,int) ;

__attribute__((used)) static int vp702x_usb_inout_cmd(struct dvb_usb_device *d, u8 cmd, u8 *o,
    int olen, u8 *i, int ilen, int msec)
{
 struct vp702x_device_state *st = d->priv;
 int ret = 0;
 u8 *buf;
 int buflen = max(olen + 2, ilen + 1);

 ret = mutex_lock_interruptible(&st->buf_mutex);
 if (ret < 0)
  return ret;

 if (buflen > st->buf_len) {
  buf = kmalloc(buflen, GFP_KERNEL);
  if (!buf) {
   mutex_unlock(&st->buf_mutex);
   return -ENOMEM;
  }
  info("successfully reallocated a bigger buffer");
  kfree(st->buf);
  st->buf = buf;
  st->buf_len = buflen;
 } else {
  buf = st->buf;
 }

 buf[0] = 0x00;
 buf[1] = cmd;
 memcpy(&buf[2], o, olen);

 ret = vp702x_usb_inout_op(d, buf, olen+2, buf, ilen+1, msec);

 if (ret == 0)
  memcpy(i, &buf[1], ilen);
 mutex_unlock(&st->buf_mutex);

 return ret;
}
