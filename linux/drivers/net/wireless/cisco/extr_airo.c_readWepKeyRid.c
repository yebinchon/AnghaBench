
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int WepKeyRid ;


 int PC4500_readrid (struct airo_info*,int ,int *,int,int) ;
 int RID_WEP_PERM ;
 int RID_WEP_TEMP ;

__attribute__((used)) static int readWepKeyRid(struct airo_info *ai, WepKeyRid *wkr, int temp, int lock)
{
 return PC4500_readrid(ai, temp ? RID_WEP_TEMP : RID_WEP_PERM,
    wkr, sizeof(*wkr), lock);
}
