
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {struct nfp_bpf_vnic* app_priv; } ;
struct nfp_bpf_vnic {int tc_prog; } ;
struct nfp_app {int dummy; } ;


 int WARN_ON (int ) ;
 int kfree (struct nfp_bpf_vnic*) ;

__attribute__((used)) static void nfp_bpf_vnic_free(struct nfp_app *app, struct nfp_net *nn)
{
 struct nfp_bpf_vnic *bv = nn->app_priv;

 WARN_ON(bv->tc_prog);
 kfree(bv);
}
