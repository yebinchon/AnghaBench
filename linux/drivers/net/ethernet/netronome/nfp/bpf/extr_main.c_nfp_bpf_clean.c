
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app_bpf {int maps_neutral; scalar_t__ map_elems_in_use; scalar_t__ maps_in_use; int map_list; int ccm; int bpf_dev; } ;
struct nfp_app {struct nfp_app_bpf* priv; } ;


 int WARN_ON (int) ;
 int bpf_offload_dev_destroy (int ) ;
 int kfree (struct nfp_app_bpf*) ;
 int list_empty (int *) ;
 int nfp_ccm_clean (int *) ;
 int nfp_check_rhashtable_empty ;
 int rhashtable_free_and_destroy (int *,int ,int *) ;

__attribute__((used)) static void nfp_bpf_clean(struct nfp_app *app)
{
 struct nfp_app_bpf *bpf = app->priv;

 bpf_offload_dev_destroy(bpf->bpf_dev);
 nfp_ccm_clean(&bpf->ccm);
 WARN_ON(!list_empty(&bpf->map_list));
 WARN_ON(bpf->maps_in_use || bpf->map_elems_in_use);
 rhashtable_free_and_destroy(&bpf->maps_neutral,
        nfp_check_rhashtable_empty, ((void*)0));
 kfree(bpf);
}
