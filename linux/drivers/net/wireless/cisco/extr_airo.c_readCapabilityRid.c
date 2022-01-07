
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int CapabilityRid ;


 int PC4500_readrid (struct airo_info*,int ,int *,int,int) ;
 int RID_CAPABILITIES ;

__attribute__((used)) static int readCapabilityRid(struct airo_info *ai, CapabilityRid *capr, int lock)
{
 return PC4500_readrid(ai, RID_CAPABILITIES, capr, sizeof(*capr), lock);
}
