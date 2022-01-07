
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {struct dp83640_private* priv; } ;
struct dp83640_private {struct dp83640_clock* clock; } ;
struct dp83640_clock {int extreg_lock; int page; int phylist; scalar_t__ chosen; } ;


 int PAGE4 ;
 int PTP_CTL ;
 int PTP_ENABLE ;
 int enable_broadcast (struct phy_device*,int ,int) ;
 int enable_status_frames (struct phy_device*,int) ;
 int ext_write (int ,struct phy_device*,int ,int ,int ) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int recalibrate (struct dp83640_clock*) ;

__attribute__((used)) static int dp83640_config_init(struct phy_device *phydev)
{
 struct dp83640_private *dp83640 = phydev->priv;
 struct dp83640_clock *clock = dp83640->clock;

 if (clock->chosen && !list_empty(&clock->phylist))
  recalibrate(clock);
 else {
  mutex_lock(&clock->extreg_lock);
  enable_broadcast(phydev, clock->page, 1);
  mutex_unlock(&clock->extreg_lock);
 }

 enable_status_frames(phydev, 1);

 mutex_lock(&clock->extreg_lock);
 ext_write(0, phydev, PAGE4, PTP_CTL, PTP_ENABLE);
 mutex_unlock(&clock->extreg_lock);

 return 0;
}
