
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_key_sz; int max_val_sz; } ;
struct nfp_app_bpf {int abi_version; int cmsg_key_sz; int cmsg_val_sz; int ccm; int maps_neutral; int bpf_dev; TYPE_1__ maps; int map_list; struct nfp_app* app; } ;
struct nfp_app {int ctrl_mtu; struct nfp_app_bpf* priv; } ;


 int CMSG_MAP_KEY_LW ;
 int CMSG_MAP_VALUE_LW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int bpf_offload_dev_create (int *,struct nfp_app_bpf*) ;
 int kfree (struct nfp_app_bpf*) ;
 struct nfp_app_bpf* kzalloc (int,int ) ;
 int nfp_bpf_ctrl_cmsg_mtu (struct nfp_app_bpf*) ;
 int nfp_bpf_dev_ops ;
 int nfp_bpf_init_capabilities (struct nfp_app_bpf*) ;
 int nfp_bpf_maps_neutral_params ;
 int nfp_bpf_parse_capabilities (struct nfp_app*) ;
 int nfp_ccm_clean (int *) ;
 int nfp_ccm_init (int *,struct nfp_app*) ;
 int rhashtable_destroy (int *) ;
 int rhashtable_init (int *,int *) ;

__attribute__((used)) static int nfp_bpf_init(struct nfp_app *app)
{
 struct nfp_app_bpf *bpf;
 int err;

 bpf = kzalloc(sizeof(*bpf), GFP_KERNEL);
 if (!bpf)
  return -ENOMEM;
 bpf->app = app;
 app->priv = bpf;

 INIT_LIST_HEAD(&bpf->map_list);

 err = nfp_ccm_init(&bpf->ccm, app);
 if (err)
  goto err_free_bpf;

 err = rhashtable_init(&bpf->maps_neutral, &nfp_bpf_maps_neutral_params);
 if (err)
  goto err_clean_ccm;

 nfp_bpf_init_capabilities(bpf);

 err = nfp_bpf_parse_capabilities(app);
 if (err)
  goto err_free_neutral_maps;

 if (bpf->abi_version < 3) {
  bpf->cmsg_key_sz = CMSG_MAP_KEY_LW * 4;
  bpf->cmsg_val_sz = CMSG_MAP_VALUE_LW * 4;
 } else {
  bpf->cmsg_key_sz = bpf->maps.max_key_sz;
  bpf->cmsg_val_sz = bpf->maps.max_val_sz;
  app->ctrl_mtu = nfp_bpf_ctrl_cmsg_mtu(bpf);
 }

 bpf->bpf_dev = bpf_offload_dev_create(&nfp_bpf_dev_ops, bpf);
 err = PTR_ERR_OR_ZERO(bpf->bpf_dev);
 if (err)
  goto err_free_neutral_maps;

 return 0;

err_free_neutral_maps:
 rhashtable_destroy(&bpf->maps_neutral);
err_clean_ccm:
 nfp_ccm_clean(&bpf->ccm);
err_free_bpf:
 kfree(bpf);
 return err;
}
