
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lme2510_state {scalar_t__ lme_urb; } ;
struct dvb_usb_device {struct dvb_usb_adapter* adapter; struct lme2510_state* priv; } ;
struct dvb_usb_adapter {int stream; } ;


 int info (char*) ;
 int lme2510_kill_urb (int *) ;
 int usb_free_urb (scalar_t__) ;
 int usb_kill_urb (scalar_t__) ;

__attribute__((used)) static void lme2510_exit(struct dvb_usb_device *d)
{
 struct lme2510_state *st = d->priv;
 struct dvb_usb_adapter *adap = &d->adapter[0];

 if (adap != ((void*)0)) {
  lme2510_kill_urb(&adap->stream);
 }

 if (st->lme_urb) {
  usb_kill_urb(st->lme_urb);
  usb_free_urb(st->lme_urb);
  info("Interrupt Service Stopped");
 }
}
