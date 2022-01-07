
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_core {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BUG () ;




 int SI476X_REVISION_A10 ;
 int SI476X_REVISION_A20 ;
 int SI476X_REVISION_A30 ;
 int dev_err (int *,char*,int,int,int) ;

__attribute__((used)) static int si476x_core_fwver_to_revision(struct si476x_core *core,
      int func, int major,
      int minor1, int minor2)
{
 switch (func) {
 case 129:
  switch (major) {
  case 5:
   return SI476X_REVISION_A10;
  case 8:
   return SI476X_REVISION_A20;
  case 10:
   return SI476X_REVISION_A30;
  default:
   goto unknown_revision;
  }
 case 131:
  switch (major) {
  case 5:
   return SI476X_REVISION_A10;
  case 7:
   return SI476X_REVISION_A20;
  case 9:
   return SI476X_REVISION_A30;
  default:
   goto unknown_revision;
  }
 case 128:
  switch (major) {
  case 3:
   return SI476X_REVISION_A10;
  case 5:
   return SI476X_REVISION_A20;
  case 7:
   return SI476X_REVISION_A30;
  default:
   goto unknown_revision;
  }
 case 130:
 default:
  BUG();
  return -1;
 }

unknown_revision:
 dev_err(&core->client->dev,
  "Unsupported version of the firmware: %d.%d.%d, "
  "reverting to A10 compatible functions\n",
  major, minor1, minor2);

 return SI476X_REVISION_A10;
}
