
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {int dev; } ;
typedef int ssize_t ;


 int netif_carrier_ok (int ) ;
 int sprintf (char*,char*,char*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_mii_status(struct device *d,
           struct device_attribute *attr,
           char *buf)
{
 struct bonding *bond = to_bond(d);
 bool active = netif_carrier_ok(bond->dev);

 return sprintf(buf, "%s\n", active ? "up" : "down");
}
