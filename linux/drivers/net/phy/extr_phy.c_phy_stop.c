
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct phy_device {TYPE_1__ state_queue; int lock; int state; } ;


 int PHY_HALTED ;
 int WARN (int,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_is_started (struct phy_device*) ;
 int phy_state_machine (int *) ;
 int phy_state_to_str (int ) ;
 int phy_stop_machine (struct phy_device*) ;

void phy_stop(struct phy_device *phydev)
{
 if (!phy_is_started(phydev)) {
  WARN(1, "called from state %s\n",
       phy_state_to_str(phydev->state));
  return;
 }

 mutex_lock(&phydev->lock);

 phydev->state = PHY_HALTED;

 mutex_unlock(&phydev->lock);

 phy_state_machine(&phydev->state_queue.work);
 phy_stop_machine(phydev);





}
