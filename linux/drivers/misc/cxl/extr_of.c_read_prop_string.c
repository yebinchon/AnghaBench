
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 scalar_t__ cxl_verbose ;
 int * of_get_property (struct device_node const*,char const*,int *) ;
 int pr_info (char*,char const*,char*) ;

__attribute__((used)) static const __be32 *read_prop_string(const struct device_node *np,
    const char *prop_name)
{
 const __be32 *prop;

 prop = of_get_property(np, prop_name, ((void*)0));
 if (cxl_verbose && prop)
  pr_info("%s: %s\n", prop_name, (char *) prop);
 return prop;
}
