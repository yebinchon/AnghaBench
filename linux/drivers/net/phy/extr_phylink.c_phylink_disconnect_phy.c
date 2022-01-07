
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phylink {int resolve; int state_mutex; struct phy_device* phydev; } ;
struct phy_device {int lock; } ;


 int ASSERT_RTNL () ;
 int flush_work (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_disconnect (struct phy_device*) ;

void phylink_disconnect_phy(struct phylink *pl)
{
 struct phy_device *phy;

 ASSERT_RTNL();

 phy = pl->phydev;
 if (phy) {
  mutex_lock(&phy->lock);
  mutex_lock(&pl->state_mutex);
  pl->phydev = ((void*)0);
  mutex_unlock(&pl->state_mutex);
  mutex_unlock(&phy->lock);
  flush_work(&pl->resolve);

  phy_disconnect(phy);
 }
}
