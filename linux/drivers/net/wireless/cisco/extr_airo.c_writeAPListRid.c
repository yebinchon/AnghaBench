
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int APListRid ;


 int PC4500_writerid (struct airo_info*,int ,int *,int,int) ;
 int RID_APLIST ;

__attribute__((used)) static int writeAPListRid(struct airo_info *ai, APListRid *aplr, int lock)
{
 return PC4500_writerid(ai, RID_APLIST, aplr, sizeof(*aplr), lock);
}
