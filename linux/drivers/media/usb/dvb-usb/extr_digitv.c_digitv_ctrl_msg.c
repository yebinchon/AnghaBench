
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct dvb_usb_device {struct digitv_state* priv; } ;
struct digitv_state {void** sndbuf; void** rcvbuf; } ;


 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,void**,int,void**,int,int) ;
 int dvb_usb_generic_write (struct dvb_usb_device*,void**,int) ;
 int memcpy (void**,void**,int) ;
 int memset (void**,int ,int) ;

__attribute__((used)) static int digitv_ctrl_msg(struct dvb_usb_device *d,
  u8 cmd, u8 vv, u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct digitv_state *st = d->priv;
 int ret, wo;

 wo = (rbuf == ((void*)0) || rlen == 0);

 if (wlen > 4 || rlen > 4)
  return -EIO;

 memset(st->sndbuf, 0, 7);
 memset(st->rcvbuf, 0, 7);

 st->sndbuf[0] = cmd;
 st->sndbuf[1] = vv;
 st->sndbuf[2] = wo ? wlen : rlen;

 if (wo) {
  memcpy(&st->sndbuf[3], wbuf, wlen);
  ret = dvb_usb_generic_write(d, st->sndbuf, 7);
 } else {
  ret = dvb_usb_generic_rw(d, st->sndbuf, 7, st->rcvbuf, 7, 10);
  memcpy(rbuf, &st->rcvbuf[3], rlen);
 }
 return ret;
}
