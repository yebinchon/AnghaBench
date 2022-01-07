
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv {int dummy; } ;


 int EREMOTEIO ;
 int IVTV_DEBUG_HI_I2C (char*) ;
 int IVTV_DEBUG_I2C (char*) ;
 int ivtv_getscl (struct ivtv*) ;
 int ivtv_getsda (struct ivtv*) ;
 int ivtv_scldelay (struct ivtv*) ;
 int ivtv_setscl (struct ivtv*,int) ;
 int ivtv_setsda (struct ivtv*,int) ;
 int ivtv_waitscl (struct ivtv*,int) ;
 int ivtv_waitsda (struct ivtv*,int) ;

__attribute__((used)) static int ivtv_start(struct ivtv *itv)
{
 int sda;

 sda = ivtv_getsda(itv);
 if (sda != 1) {
  IVTV_DEBUG_HI_I2C("SDA was low at start\n");
  ivtv_setsda(itv, 1);
  if (!ivtv_waitsda(itv, 1)) {
   IVTV_DEBUG_I2C("SDA stuck low\n");
   return -EREMOTEIO;
  }
 }
 if (ivtv_getscl(itv) != 1) {
  ivtv_setscl(itv, 1);
  if (!ivtv_waitscl(itv, 1)) {
   IVTV_DEBUG_I2C("SCL stuck low at start\n");
   return -EREMOTEIO;
  }
 }
 ivtv_setsda(itv, 0);
 ivtv_scldelay(itv);
 return 0;
}
