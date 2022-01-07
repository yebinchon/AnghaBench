
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int ad_actor_sys_prio; } ;
struct bonding {TYPE_1__ params; } ;
typedef int ssize_t ;


 scalar_t__ BOND_MODE (struct bonding*) ;
 scalar_t__ BOND_MODE_8023AD ;
 int CAP_NET_ADMIN ;
 scalar_t__ capable (int ) ;
 int sprintf (char*,char*,int ) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_ad_actor_sys_prio(struct device *d,
           struct device_attribute *attr,
           char *buf)
{
 struct bonding *bond = to_bond(d);

 if (BOND_MODE(bond) == BOND_MODE_8023AD && capable(CAP_NET_ADMIN))
  return sprintf(buf, "%hu\n", bond->params.ad_actor_sys_prio);

 return 0;
}
