
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int const) ;
 scalar_t__ cxl_verbose ;
 int * of_get_property (struct device_node const*,char const*,int *) ;
 int pr_info (char*,char const*,int ,int ) ;

__attribute__((used)) static const __be32 *read_prop_dword(const struct device_node *np,
    const char *prop_name, u32 *val)
{
 const __be32 *prop;

 prop = of_get_property(np, prop_name, ((void*)0));
 if (prop)
  *val = be32_to_cpu(prop[0]);
 if (cxl_verbose && prop)
  pr_info("%s: %#x (%u)\n", prop_name, *val, *val);
 return prop;
}
