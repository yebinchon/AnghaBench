
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int suspended; } ;
struct hclge_dev {int dummy; } ;


 int phy_loopback (struct phy_device*,int) ;
 int phy_resume (struct phy_device*) ;
 int phy_suspend (struct phy_device*) ;

__attribute__((used)) static int hclge_enable_phy_loopback(struct hclge_dev *hdev,
         struct phy_device *phydev)
{
 int ret;

 if (!phydev->suspended) {
  ret = phy_suspend(phydev);
  if (ret)
   return ret;
 }

 ret = phy_resume(phydev);
 if (ret)
  return ret;

 return phy_loopback(phydev, 1);
}
