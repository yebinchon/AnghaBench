
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfp_resource {int addr; } ;



u64 nfp_resource_address(struct nfp_resource *res)
{
 return res->addr;
}
