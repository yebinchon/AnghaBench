
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_flash {int region; int data; } ;
struct bnxt {int dummy; } ;


 int BNXT_PF (struct bnxt*) ;
 int EINVAL ;
 int ETHTOOL_FLASH_ALL_REGIONS ;
 int bnxt_flash_firmware_from_file (struct net_device*,int,int ) ;
 int bnxt_flash_package_from_file (struct net_device*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_flash_device(struct net_device *dev,
        struct ethtool_flash *flash)
{
 if (!BNXT_PF((struct bnxt *)netdev_priv(dev))) {
  netdev_err(dev, "flashdev not supported from a virtual function\n");
  return -EINVAL;
 }

 if (flash->region == ETHTOOL_FLASH_ALL_REGIONS ||
     flash->region > 0xffff)
  return bnxt_flash_package_from_file(dev, flash->data,
          flash->region);

 return bnxt_flash_firmware_from_file(dev, flash->region, flash->data);
}
