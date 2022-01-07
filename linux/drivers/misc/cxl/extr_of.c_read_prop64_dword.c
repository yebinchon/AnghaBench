
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_node {int dummy; } ;
typedef int __be64 ;


 int be64_to_cpu (int const) ;
 scalar_t__ cxl_verbose ;
 int * of_get_property (struct device_node const*,char const*,int *) ;
 int pr_info (char*,char const*,int ,int ) ;

__attribute__((used)) static const __be64 *read_prop64_dword(const struct device_node *np,
    const char *prop_name, u64 *val)
{
 const __be64 *prop;

 prop = of_get_property(np, prop_name, ((void*)0));
 if (prop)
  *val = be64_to_cpu(prop[0]);
 if (cxl_verbose && prop)
  pr_info("%s: %#llx (%llu)\n", prop_name, *val, *val);
 return prop;
}
