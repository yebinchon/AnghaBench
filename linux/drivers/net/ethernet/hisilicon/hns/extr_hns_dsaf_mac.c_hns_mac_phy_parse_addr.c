
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int PHY_MAX_ADDR ;
 int dev_err (struct device*,char*,int) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,int*) ;

__attribute__((used)) static int
hns_mac_phy_parse_addr(struct device *dev, struct fwnode_handle *fwnode)
{
 u32 addr;
 int ret;

 ret = fwnode_property_read_u32(fwnode, "phy-addr", &addr);
 if (ret) {
  dev_err(dev, "has invalid PHY address ret:%d\n", ret);
  return ret;
 }

 if (addr >= PHY_MAX_ADDR) {
  dev_err(dev, "PHY address %i is too large\n", addr);
  return -EINVAL;
 }

 return addr;
}
