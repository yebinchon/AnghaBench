
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int SsidRid ;


 int PC4500_writerid (struct airo_info*,int ,int *,int,int) ;
 int RID_SSID ;

__attribute__((used)) static int writeSsidRid(struct airo_info*ai, SsidRid *pssidr, int lock)
{
 return PC4500_writerid(ai, RID_SSID, pssidr, sizeof(*pssidr), lock);
}
