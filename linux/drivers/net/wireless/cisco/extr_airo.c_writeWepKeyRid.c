
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; } ;
typedef int WepKeyRid ;
struct TYPE_2__ {int name; } ;


 int PC4500_writerid (struct airo_info*,int ,int *,int,int) ;
 int RID_WEP_PERM ;
 int RID_WEP_TEMP ;
 int SUCCESS ;
 int airo_print_err (int ,char*,int) ;

__attribute__((used)) static int writeWepKeyRid(struct airo_info *ai, WepKeyRid *wkr, int perm, int lock)
{
 int rc;
 rc = PC4500_writerid(ai, RID_WEP_TEMP, wkr, sizeof(*wkr), lock);
 if (rc!=SUCCESS)
  airo_print_err(ai->dev->name, "WEP_TEMP set %x", rc);
 if (perm) {
  rc = PC4500_writerid(ai, RID_WEP_PERM, wkr, sizeof(*wkr), lock);
  if (rc!=SUCCESS)
   airo_print_err(ai->dev->name, "WEP_PERM set %x", rc);
 }
 return rc;
}
