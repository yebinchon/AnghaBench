
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ivtv {int dummy; } ;


 int EREMOTEIO ;
 int IVTV_DEBUG_I2C (char*,unsigned char) ;
 int ivtv_readbyte (struct ivtv*,unsigned char*,int) ;
 int ivtv_sendbyte (struct ivtv*,unsigned char) ;
 int ivtv_start (struct ivtv*) ;
 int ivtv_stop (struct ivtv*) ;

__attribute__((used)) static int ivtv_read(struct ivtv *itv, unsigned char addr, unsigned char *data, u32 len)
{
 int retry, ret = -EREMOTEIO;
 u32 i;

 for (retry = 0; ret != 0 && retry < 8; ++retry) {
  ret = ivtv_start(itv);
  if (ret == 0)
   ret = ivtv_sendbyte(itv, (addr << 1) | 1);
  for (i = 0; ret == 0 && i < len; ++i) {
   ret = ivtv_readbyte(itv, &data[i], i == len - 1);
  }
  ivtv_stop(itv);
 }
 if (ret)
  IVTV_DEBUG_I2C("i2c read from %x failed\n", addr);
 return ret;
}
