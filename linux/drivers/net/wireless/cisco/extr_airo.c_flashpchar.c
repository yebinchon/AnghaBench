
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int EBUSY ;
 int EIO ;
 int IN4500 (struct airo_info*,int ) ;
 int OUT4500 (struct airo_info*,int ,int) ;
 int SWS0 ;
 int SWS1 ;
 int airo_print_info (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int flashpchar(struct airo_info *ai,int byte,int dwelltime) {
 int echo;
 int waittime;

 byte |= 0x8000;

 if(dwelltime == 0 )
  dwelltime = 200;

 waittime=dwelltime;


 while ((IN4500 (ai, SWS0) & 0x8000) && waittime > 0) {
  udelay (50);
  waittime -= 50;
 }


 if(waittime <= 0 ){
  airo_print_info(ai->dev->name, "flash putchar busywait timeout!");
  return -EBUSY;
 }


 do {
  OUT4500(ai,SWS0,byte);
  udelay(50);
  dwelltime -= 50;
  echo = IN4500(ai,SWS1);
 } while (dwelltime >= 0 && echo != byte);

 OUT4500(ai,SWS1,0);

 return (echo == byte) ? 0 : -EIO;
}
