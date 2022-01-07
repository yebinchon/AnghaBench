
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfp_nffw_info_data {int dummy; } ;
struct nfp_nffw_info {int res; struct nfp_cpp* cpp; struct nfp_nffw_info_data fwinf; } ;
struct nfp_cpp {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 struct nfp_nffw_info* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 scalar_t__ NFFW_INFO_VERSION_CURRENT ;
 int NFP_RESOURCE_NFP_NFFW ;
 int kfree (struct nfp_nffw_info*) ;
 struct nfp_nffw_info* kzalloc (int,int ) ;
 int nffw_res_flg_init_get (struct nfp_nffw_info_data*) ;
 scalar_t__ nffw_res_info_version_get (struct nfp_nffw_info_data*) ;
 int nfp_cpp_read (struct nfp_cpp*,int ,int ,struct nfp_nffw_info_data*,int) ;
 int nfp_resource_acquire (struct nfp_cpp*,int ) ;
 int nfp_resource_address (int ) ;
 int nfp_resource_cpp_id (int ) ;
 int nfp_resource_release (int ) ;
 int nfp_resource_size (int ) ;

struct nfp_nffw_info *nfp_nffw_info_open(struct nfp_cpp *cpp)
{
 struct nfp_nffw_info_data *fwinf;
 struct nfp_nffw_info *state;
 u32 info_ver;
 int err;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ERR_PTR(-ENOMEM);

 state->res = nfp_resource_acquire(cpp, NFP_RESOURCE_NFP_NFFW);
 if (IS_ERR(state->res))
  goto err_free;

 fwinf = &state->fwinf;

 if (sizeof(*fwinf) > nfp_resource_size(state->res))
  goto err_release;

 err = nfp_cpp_read(cpp, nfp_resource_cpp_id(state->res),
      nfp_resource_address(state->res),
      fwinf, sizeof(*fwinf));
 if (err < (int)sizeof(*fwinf))
  goto err_release;

 if (!nffw_res_flg_init_get(fwinf))
  goto err_release;

 info_ver = nffw_res_info_version_get(fwinf);
 if (info_ver > NFFW_INFO_VERSION_CURRENT)
  goto err_release;

 state->cpp = cpp;
 return state;

err_release:
 nfp_resource_release(state->res);
err_free:
 kfree(state);
 return ERR_PTR(-EIO);
}
