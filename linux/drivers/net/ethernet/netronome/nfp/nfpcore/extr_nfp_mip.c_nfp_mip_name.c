
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_mip {char const* name; } ;



const char *nfp_mip_name(const struct nfp_mip *mip)
{
 return mip->name;
}
