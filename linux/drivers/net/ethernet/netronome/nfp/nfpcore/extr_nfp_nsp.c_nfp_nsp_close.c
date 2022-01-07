
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_nsp {int res; } ;


 int kfree (struct nfp_nsp*) ;
 int nfp_resource_release (int ) ;

void nfp_nsp_close(struct nfp_nsp *state)
{
 nfp_resource_release(state->res);
 kfree(state);
}
