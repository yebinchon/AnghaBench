
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {unsigned int len; scalar_t__ paylen; int * buf; } ;


 int AUXB ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int) ;

__attribute__((used)) static void cxusb_auxbuf_init(struct dvb_usb_device *dvbdev,
         struct cxusb_medion_auxbuf *auxbuf,
         u8 *buf, unsigned int len)
{
 cxusb_vprintk(dvbdev, AUXB, "initializing auxbuf of len %u\n", len);

 auxbuf->buf = buf;
 auxbuf->len = len;
 auxbuf->paylen = 0;
}
