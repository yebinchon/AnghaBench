
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct cxusb_medion_auxbuf {unsigned int len; } ;


 int AUXB ;
 scalar_t__ WARN_ON (int) ;
 int cxusb_auxbuf_head_trim (struct dvb_usb_device*,struct cxusb_medion_auxbuf*,unsigned int) ;
 unsigned int cxusb_auxbuf_paylen (struct cxusb_medion_auxbuf*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int) ;

__attribute__((used)) static bool cxusb_auxbuf_make_space(struct dvb_usb_device *dvbdev,
        struct cxusb_medion_auxbuf *auxbuf,
        unsigned int howmuch)
{
 unsigned int freespace;

 if (WARN_ON(howmuch >= auxbuf->len))
  howmuch = auxbuf->len - 1;

 freespace = auxbuf->len - cxusb_auxbuf_paylen(auxbuf);

 cxusb_vprintk(dvbdev, AUXB, "freespace is %u\n", freespace);

 if (freespace >= howmuch)
  return 1;

 howmuch -= freespace;

 cxusb_vprintk(dvbdev, AUXB, "will overwrite %u bytes of buffer\n",
        howmuch);

 cxusb_auxbuf_head_trim(dvbdev, auxbuf, howmuch);

 return 0;
}
