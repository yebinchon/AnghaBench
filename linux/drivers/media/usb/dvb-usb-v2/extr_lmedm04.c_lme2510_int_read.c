
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usb_host_endpoint {int desc; } ;
struct lme2510_state {TYPE_1__* lme_urb; int int_buffer; } ;
struct dvb_usb_device {int udev; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_4__ {int pipe; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ USB_ENDPOINT_XFER_BULK ;
 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct lme2510_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int info (char*) ;
 int lme2510_int_response ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_type (int *) ;
 int usb_fill_int_urb (TYPE_1__*,int ,int ,int ,int,int ,struct dvb_usb_adapter*,int) ;
 struct usb_host_endpoint* usb_pipe_endpoint (int ,int ) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_rcvintpipe (int ,int) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int lme2510_int_read(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct lme2510_state *lme_int = adap_to_priv(adap);
 struct usb_host_endpoint *ep;

 lme_int->lme_urb = usb_alloc_urb(0, GFP_ATOMIC);

 if (lme_int->lme_urb == ((void*)0))
   return -ENOMEM;

 usb_fill_int_urb(lme_int->lme_urb,
    d->udev,
    usb_rcvintpipe(d->udev, 0xa),
    lme_int->int_buffer,
    sizeof(lme_int->int_buffer),
    lme2510_int_response,
    adap,
    8);


 ep = usb_pipe_endpoint(d->udev, lme_int->lme_urb->pipe);

 if (usb_endpoint_type(&ep->desc) == USB_ENDPOINT_XFER_BULK)
  lme_int->lme_urb->pipe = usb_rcvbulkpipe(d->udev, 0xa),

 usb_submit_urb(lme_int->lme_urb, GFP_ATOMIC);
 info("INT Interrupt Service Started");

 return 0;
}
