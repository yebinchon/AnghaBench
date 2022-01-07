
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {unsigned int paylen; scalar_t__ buf; } ;


 int AUXB ;
 scalar_t__ WARN_ON (int) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int,unsigned int) ;
 int memmove (scalar_t__,scalar_t__,unsigned int) ;

__attribute__((used)) static void cxusb_auxbuf_head_trim(struct dvb_usb_device *dvbdev,
       struct cxusb_medion_auxbuf *auxbuf,
       unsigned int pos)
{
 if (pos == 0)
  return;

 if (WARN_ON(pos > auxbuf->paylen))
  return;

 cxusb_vprintk(dvbdev, AUXB,
        "trimming auxbuf len by %u to %u\n",
        pos, auxbuf->paylen - pos);

 memmove(auxbuf->buf, auxbuf->buf + pos, auxbuf->paylen - pos);
 auxbuf->paylen -= pos;
}
