
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lme2510_state {int i2c_talk_onoff; } ;
struct dvb_usb_device {struct lme2510_state* priv; } ;


 int lme2510_usb_talk (struct dvb_usb_device*,int *,int,int *,int) ;

__attribute__((used)) static int lme2510_msg(struct dvb_usb_device *d,
  u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct lme2510_state *st = d->priv;

 st->i2c_talk_onoff = 1;

 return lme2510_usb_talk(d, wbuf, wlen, rbuf, rlen);
}
