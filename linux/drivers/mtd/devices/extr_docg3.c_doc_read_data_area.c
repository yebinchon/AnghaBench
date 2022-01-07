
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct docg3 {int dummy; } ;


 int DOC_IOSPACE_DATA ;
 int DOC_READADDRESS ;
 int DOC_READADDR_ONE_BYTE ;
 int doc_dbg (char*,void*,int) ;
 int doc_delay (struct docg3*,int) ;
 int doc_readb (struct docg3*,int) ;
 int doc_readw (struct docg3*,int) ;
 int doc_writew (struct docg3*,int,int ) ;

__attribute__((used)) static void doc_read_data_area(struct docg3 *docg3, void *buf, int len,
          int first)
{
 int i, cdr, len4;
 u16 data16, *dst16;
 u8 data8, *dst8;

 doc_dbg("doc_read_data_area(buf=%p, len=%d)\n", buf, len);
 cdr = len & 0x1;
 len4 = len - cdr;

 if (first)
  doc_writew(docg3, DOC_IOSPACE_DATA, DOC_READADDRESS);
 dst16 = buf;
 for (i = 0; i < len4; i += 2) {
  data16 = doc_readw(docg3, DOC_IOSPACE_DATA);
  if (dst16) {
   *dst16 = data16;
   dst16++;
  }
 }

 if (cdr) {
  doc_writew(docg3, DOC_IOSPACE_DATA | DOC_READADDR_ONE_BYTE,
      DOC_READADDRESS);
  doc_delay(docg3, 1);
  dst8 = (u8 *)dst16;
  for (i = 0; i < cdr; i++) {
   data8 = doc_readb(docg3, DOC_IOSPACE_DATA);
   if (dst8) {
    *dst8 = data8;
    dst8++;
   }
  }
 }
}
