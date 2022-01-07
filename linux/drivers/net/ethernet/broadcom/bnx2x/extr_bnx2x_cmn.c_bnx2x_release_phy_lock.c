
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_mutex; } ;
struct bnx2x {TYPE_1__ port; } ;


 int HW_LOCK_RESOURCE_MDIO ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;
 int mutex_unlock (int *) ;

void bnx2x_release_phy_lock(struct bnx2x *bp)
{
 bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_MDIO);

 mutex_unlock(&bp->port.phy_mutex);
}
