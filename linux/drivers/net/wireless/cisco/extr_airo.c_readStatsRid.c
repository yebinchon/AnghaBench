
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int dummy; } ;
typedef int StatsRid ;


 int PC4500_readrid (struct airo_info*,int,int *,int,int) ;

__attribute__((used)) static int readStatsRid(struct airo_info*ai, StatsRid *sr, int rid, int lock)
{
 return PC4500_readrid(ai, rid, sr, sizeof(*sr), lock);
}
