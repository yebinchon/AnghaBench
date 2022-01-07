
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int EREMOTEIO ;
 int IVTV_DEBUG_HI_I2C (char*) ;
 int IVTV_DEBUG_I2C (char*) ;
 scalar_t__ ivtv_getscl (struct ivtv*) ;
 int ivtv_scldelay (struct ivtv*) ;
 int ivtv_setscl (struct ivtv*,int) ;
 int ivtv_setsda (struct ivtv*,int) ;
 int ivtv_waitscl (struct ivtv*,int) ;
 int ivtv_waitsda (struct ivtv*,int) ;

__attribute__((used)) static int ivtv_stop(struct ivtv *itv)
{
 int i;

 if (ivtv_getscl(itv) != 0) {
  IVTV_DEBUG_HI_I2C("SCL not low when stopping\n");
  ivtv_setscl(itv, 0);
  if (!ivtv_waitscl(itv, 0)) {
   IVTV_DEBUG_I2C("SCL could not be set low\n");
  }
 }
 ivtv_setsda(itv, 0);
 ivtv_scldelay(itv);
 ivtv_setscl(itv, 1);
 if (!ivtv_waitscl(itv, 1)) {
  IVTV_DEBUG_I2C("SCL could not be set high\n");
  return -EREMOTEIO;
 }
 ivtv_scldelay(itv);
 ivtv_setsda(itv, 1);
 if (!ivtv_waitsda(itv, 1)) {
  IVTV_DEBUG_I2C("resetting I2C\n");
  for (i = 0; i < 16; ++i) {
   ivtv_setscl(itv, 0);
   ivtv_scldelay(itv);
   ivtv_setscl(itv, 1);
   ivtv_scldelay(itv);
   ivtv_setsda(itv, 1);
  }
  ivtv_waitsda(itv, 1);
  return -EREMOTEIO;
 }
 return 0;
}
