
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_resource {char const* name; } ;



const char *nfp_resource_name(struct nfp_resource *res)
{
 return res->name;
}
