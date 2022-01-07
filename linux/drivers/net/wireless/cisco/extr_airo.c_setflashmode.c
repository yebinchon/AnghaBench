
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; int flags; } ;
struct TYPE_2__ {int name; } ;


 int COMMAND ;
 int EIO ;
 int FLAG_FLASHING ;
 int FLASH_COMMAND ;
 int OUT4500 (struct airo_info*,int ,int) ;
 int SWS0 ;
 int SWS1 ;
 int SWS2 ;
 int SWS3 ;
 int airo_print_info (int ,char*) ;
 int clear_bit (int ,int *) ;
 int msleep (int) ;
 scalar_t__ probe ;
 int set_bit (int ,int *) ;
 int waitbusy (struct airo_info*) ;

__attribute__((used)) static int setflashmode (struct airo_info *ai) {
 set_bit (FLAG_FLASHING, &ai->flags);

 OUT4500(ai, SWS0, FLASH_COMMAND);
 OUT4500(ai, SWS1, FLASH_COMMAND);
 if (probe) {
  OUT4500(ai, SWS0, FLASH_COMMAND);
  OUT4500(ai, COMMAND,0x10);
 } else {
  OUT4500(ai, SWS2, FLASH_COMMAND);
  OUT4500(ai, SWS3, FLASH_COMMAND);
  OUT4500(ai, COMMAND,0);
 }
 msleep(500);

 if(!waitbusy(ai)) {
  clear_bit (FLAG_FLASHING, &ai->flags);
  airo_print_info(ai->dev->name, "Waitbusy hang after setflash mode");
  return -EIO;
 }
 return 0;
}
