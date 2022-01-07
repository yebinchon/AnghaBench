
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nffw_info {int res; } ;


 int kfree (struct nfp_nffw_info*) ;
 int nfp_resource_release (int ) ;

void nfp_nffw_info_close(struct nfp_nffw_info *state)
{
 nfp_resource_release(state->res);
 kfree(state);
}
