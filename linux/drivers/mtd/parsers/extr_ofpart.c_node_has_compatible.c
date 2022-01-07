
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static bool node_has_compatible(struct device_node *pp)
{
 return of_get_property(pp, "compatible", ((void*)0));
}
