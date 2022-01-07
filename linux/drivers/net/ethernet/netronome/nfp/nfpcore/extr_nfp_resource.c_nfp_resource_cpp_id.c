
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_resource {int cpp_id; } ;



u32 nfp_resource_cpp_id(struct nfp_resource *res)
{
 return res->cpp_id;
}
