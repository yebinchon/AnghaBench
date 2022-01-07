
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxusb_medion_auxbuf {unsigned int paylen; } ;



__attribute__((used)) static unsigned int cxusb_auxbuf_paylen(struct cxusb_medion_auxbuf *auxbuf)
{
 return auxbuf->paylen;
}
