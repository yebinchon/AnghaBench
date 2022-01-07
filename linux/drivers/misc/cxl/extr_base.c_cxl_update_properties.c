
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int of_update_property (struct device_node*,struct property*) ;

int cxl_update_properties(struct device_node *dn,
     struct property *new_prop)
{
 return of_update_property(dn, new_prop);
}
