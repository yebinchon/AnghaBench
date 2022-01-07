
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int CMD_SOFTRESET ;
 int COMMAND ;
 int EBUSY ;
 int OUT4500 (struct airo_info*,int ,int ) ;
 int airo_print_info (int ,char*) ;
 int disable_MAC (struct airo_info*,int) ;
 int ssleep (int) ;
 int waitbusy (struct airo_info*) ;

__attribute__((used)) static int cmdreset(struct airo_info *ai) {
 disable_MAC(ai, 1);

 if(!waitbusy (ai)){
  airo_print_info(ai->dev->name, "Waitbusy hang before RESET");
  return -EBUSY;
 }

 OUT4500(ai,COMMAND,CMD_SOFTRESET);

 ssleep(1);

 if(!waitbusy (ai)){
  airo_print_info(ai->dev->name, "Waitbusy hang AFTER RESET");
  return -EBUSY;
 }
 return 0;
}
