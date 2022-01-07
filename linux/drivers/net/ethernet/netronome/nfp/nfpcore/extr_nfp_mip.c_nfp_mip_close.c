
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_mip {int dummy; } ;


 int kfree (struct nfp_mip const*) ;

void nfp_mip_close(const struct nfp_mip *mip)
{
 kfree(mip);
}
