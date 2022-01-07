
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct phy_device {int dummy; } ;


 int phy_loopback (struct phy_device*,int) ;
 int phy_resume (struct phy_device*) ;
 int phy_suspend (struct phy_device*) ;

__attribute__((used)) static int hns_nic_config_phy_loopback(struct phy_device *phy_dev, u8 en)
{
 int err;

 if (en) {



  err = phy_resume(phy_dev);
  if (err)
   goto out;

  err = phy_loopback(phy_dev, 1);
 } else {
  err = phy_loopback(phy_dev, 0);
  if (err)
   goto out;

  err = phy_suspend(phy_dev);
 }

out:
 return err;
}
