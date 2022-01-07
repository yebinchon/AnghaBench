
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int data_mutex; int last_event; struct af9005_device_state* priv; } ;
struct af9005_device_state {int* data; int sequence; } ;


 int EIO ;
 int REMOTE_KEY_REPEAT ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_rc (char*,int,...) ;
 int debug_dump (int*,int,int (*) (char*,int,int )) ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rc_decode (struct dvb_usb_device*,int*,int,int *,int*) ;

__attribute__((used)) static int af9005_rc_query(struct dvb_usb_device *d, u32 * event, int *state)
{
 struct af9005_device_state *st = d->priv;
 int ret, len;
 u8 seq;

 *state = REMOTE_NO_KEY_PRESSED;
 if (rc_decode == ((void*)0)) {

  return 0;
 }

 mutex_lock(&d->data_mutex);


 st->data[0] = 3;
 st->data[1] = 0;
 st->data[2] = 0x40;
 st->data[3] = 1;
 st->data[4] = seq = st->sequence++;
 ret = dvb_usb_generic_rw(d, st->data, 5, st->data, 256, 0);
 if (ret) {
  err("rc query failed");
  goto ret;
 }
 if (st->data[2] != 0x41) {
  err("rc query bad header.");
  ret = -EIO;
  goto ret;
 } else if (st->data[4] != seq) {
  err("rc query bad sequence.");
  ret = -EIO;
  goto ret;
 }
 len = st->data[5];
 if (len > 246) {
  err("rc query invalid length");
  ret = -EIO;
  goto ret;
 }
 if (len > 0) {
  deb_rc("rc data (%d) ", len);
  debug_dump((st->data + 6), len, deb_rc);
  ret = rc_decode(d, &st->data[6], len, event, state);
  if (ret) {
   err("rc_decode failed");
   goto ret;
  } else {
   deb_rc("rc_decode state %x event %x\n", *state, *event);
   if (*state == REMOTE_KEY_REPEAT)
    *event = d->last_event;
  }
 }

ret:
 mutex_unlock(&d->data_mutex);
 return ret;
}
