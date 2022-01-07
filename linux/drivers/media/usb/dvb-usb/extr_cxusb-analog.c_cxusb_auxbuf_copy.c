
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxusb_medion_auxbuf {unsigned int paylen; scalar_t__ buf; } ;


 int memcpy (unsigned char*,scalar_t__,unsigned int) ;

__attribute__((used)) static bool cxusb_auxbuf_copy(struct cxusb_medion_auxbuf *auxbuf,
         unsigned int pos, unsigned char *dest,
         unsigned int len)
{
 if (pos + len > auxbuf->paylen)
  return 0;

 memcpy(dest, auxbuf->buf + pos, len);

 return 1;
}
