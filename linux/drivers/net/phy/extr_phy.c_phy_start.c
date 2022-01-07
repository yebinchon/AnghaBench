
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ state; int lock; } ;


 scalar_t__ PHY_HALTED ;
 scalar_t__ PHY_READY ;
 scalar_t__ PHY_UP ;
 int WARN (int,char*,int ) ;
 int __phy_resume (struct phy_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_start_machine (struct phy_device*) ;
 int phy_state_to_str (scalar_t__) ;

void phy_start(struct phy_device *phydev)
{
 mutex_lock(&phydev->lock);

 if (phydev->state != PHY_READY && phydev->state != PHY_HALTED) {
  WARN(1, "called from state %s\n",
       phy_state_to_str(phydev->state));
  goto out;
 }


 __phy_resume(phydev);

 phydev->state = PHY_UP;

 phy_start_machine(phydev);
out:
 mutex_unlock(&phydev->lock);
}
