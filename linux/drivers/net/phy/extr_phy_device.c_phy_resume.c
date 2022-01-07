
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int lock; } ;


 int __phy_resume (struct phy_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int phy_resume(struct phy_device *phydev)
{
 int ret;

 mutex_lock(&phydev->lock);
 ret = __phy_resume(phydev);
 mutex_unlock(&phydev->lock);

 return ret;
}
