
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int bnx2x_get_leader_lock_resource (struct bnx2x*) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;

int bnx2x_release_leader_lock(struct bnx2x *bp)
{
 return bnx2x_release_hw_lock(bp, bnx2x_get_leader_lock_resource(bp));
}
