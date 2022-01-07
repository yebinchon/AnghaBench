
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int state_queue; } ;


 int mod_delayed_work (int ,int *,unsigned long) ;
 int system_power_efficient_wq ;

void phy_queue_state_machine(struct phy_device *phydev, unsigned long jiffies)
{
 mod_delayed_work(system_power_efficient_wq, &phydev->state_queue,
    jiffies);
}
