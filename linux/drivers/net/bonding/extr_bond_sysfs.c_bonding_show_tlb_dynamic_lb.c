
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int tlb_dynamic_lb; } ;
struct bonding {TYPE_1__ params; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_tlb_dynamic_lb(struct device *d,
        struct device_attribute *attr,
        char *buf)
{
 struct bonding *bond = to_bond(d);
 return sprintf(buf, "%d\n", bond->params.tlb_dynamic_lb);
}
