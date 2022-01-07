
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct hclge_dev {int dummy; } ;


 int phy_loopback (struct phy_device*,int) ;
 int phy_suspend (struct phy_device*) ;

__attribute__((used)) static int hclge_disable_phy_loopback(struct hclge_dev *hdev,
          struct phy_device *phydev)
{
 int ret;

 ret = phy_loopback(phydev, 0);
 if (ret)
  return ret;

 return phy_suspend(phydev);
}
