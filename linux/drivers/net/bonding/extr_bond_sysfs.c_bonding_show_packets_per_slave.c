
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int packets_per_slave; } ;
struct bonding {TYPE_1__ params; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_packets_per_slave(struct device *d,
           struct device_attribute *attr,
           char *buf)
{
 struct bonding *bond = to_bond(d);
 unsigned int packets_per_slave = bond->params.packets_per_slave;

 return sprintf(buf, "%u\n", packets_per_slave);
}
