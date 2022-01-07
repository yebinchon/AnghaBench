
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const PMAD_LANCE ;
 int const PMAX_LANCE ;
 int iob () ;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void cp_to_buf(const int type, void *to, const void *from, int len)
{
 unsigned short *tp;
 const unsigned short *fp;
 unsigned short clen;
 unsigned char *rtp;
 const unsigned char *rfp;

 if (type == PMAD_LANCE) {
  memcpy(to, from, len);
 } else if (type == PMAX_LANCE) {
  clen = len >> 1;
  tp = to;
  fp = from;

  while (clen--) {
   *tp++ = *fp++;
   tp++;
  }

  clen = len & 1;
  rtp = (unsigned char *)tp;
  rfp = (const unsigned char *)fp;
  while (clen--) {
   *rtp++ = *rfp++;
  }
 } else {



  clen = len >> 4;
  tp = to;
  fp = from;
  while (clen--) {
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   *tp++ = *fp++;
   tp += 8;
  }




  clen = len & 15;
  rtp = (unsigned char *)tp;
  rfp = (const unsigned char *)fp;
  while (clen--) {
   *rtp++ = *rfp++;
  }
 }

 iob();
}
