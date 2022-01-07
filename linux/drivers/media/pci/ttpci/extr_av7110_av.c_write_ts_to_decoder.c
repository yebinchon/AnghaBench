
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipack {int dummy; } ;
struct av7110 {struct ipack* ipack; } ;


 int const ADAPT_FIELD ;
 int const PAYLOAD ;
 int const PAY_START ;
 int const TRANS_ERROR ;
 int av7110_ipack_flush (struct ipack*) ;
 int av7110_ipack_instant_repack (int const*,size_t,struct ipack*) ;
 int av7110_ipack_reset (struct ipack*) ;

__attribute__((used)) static int write_ts_to_decoder(struct av7110 *av7110, int type, const u8 *buf, size_t len)
{
 struct ipack *ipack = &av7110->ipack[type];

 if (buf[1] & TRANS_ERROR) {
  av7110_ipack_reset(ipack);
  return -1;
 }

 if (!(buf[3] & PAYLOAD))
  return -1;

 if (buf[1] & PAY_START)
  av7110_ipack_flush(ipack);

 if (buf[3] & ADAPT_FIELD) {
  len -= buf[4] + 1;
  buf += buf[4] + 1;
  if (!len)
   return 0;
 }

 av7110_ipack_instant_repack(buf + 4, len - 4, ipack);
 return 0;
}
