
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_icm_size; } ;
struct TYPE_4__ {int supp_sw_steering; TYPE_1__ caps; int max_log_sw_icm_sz; int max_log_action_icm_sz; } ;
struct mlx5dr_domain {int type; TYPE_2__ info; int mutex; int refcount; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum mlx5dr_domain_type { ____Placeholder_mlx5dr_domain_type } mlx5dr_domain_type ;


 int DR_CHUNK_SIZE_1024K ;
 int DR_CHUNK_SIZE_4K ;
 int GFP_KERNEL ;
 int MLX5DR_DOMAIN_TYPE_FDB ;
 scalar_t__ dr_domain_caps_init (struct mlx5_core_dev*,struct mlx5dr_domain*) ;
 int dr_domain_caps_uninit (struct mlx5dr_domain*) ;
 int dr_domain_init_cache (struct mlx5dr_domain*) ;
 int dr_domain_init_resources (struct mlx5dr_domain*) ;
 int dr_domain_uninit_resources (struct mlx5dr_domain*) ;
 int kfree (struct mlx5dr_domain*) ;
 struct mlx5dr_domain* kzalloc (int,int ) ;
 int min_t (int ,int ,int ) ;
 int mlx5dr_crc32_init_table () ;
 int mlx5dr_dbg (struct mlx5dr_domain*,char*) ;
 int mlx5dr_err (struct mlx5dr_domain*,char*) ;
 int mutex_init (int *) ;
 int refcount_set (int *,int) ;
 int u32 ;

struct mlx5dr_domain *
mlx5dr_domain_create(struct mlx5_core_dev *mdev, enum mlx5dr_domain_type type)
{
 struct mlx5dr_domain *dmn;
 int ret;

 if (type > MLX5DR_DOMAIN_TYPE_FDB)
  return ((void*)0);

 dmn = kzalloc(sizeof(*dmn), GFP_KERNEL);
 if (!dmn)
  return ((void*)0);

 dmn->mdev = mdev;
 dmn->type = type;
 refcount_set(&dmn->refcount, 1);
 mutex_init(&dmn->mutex);

 if (dr_domain_caps_init(mdev, dmn)) {
  mlx5dr_dbg(dmn, "Failed init domain, no caps\n");
  goto free_domain;
 }

 dmn->info.max_log_action_icm_sz = DR_CHUNK_SIZE_4K;
 dmn->info.max_log_sw_icm_sz = min_t(u32, DR_CHUNK_SIZE_1024K,
         dmn->info.caps.log_icm_size);

 if (!dmn->info.supp_sw_steering) {
  mlx5dr_err(dmn, "SW steering is not supported\n");
  goto uninit_caps;
 }


 ret = dr_domain_init_resources(dmn);
 if (ret) {
  mlx5dr_err(dmn, "Failed init domain resources\n");
  goto uninit_caps;
 }

 ret = dr_domain_init_cache(dmn);
 if (ret) {
  mlx5dr_err(dmn, "Failed initialize domain cache\n");
  goto uninit_resourses;
 }


 mlx5dr_crc32_init_table();

 return dmn;

uninit_resourses:
 dr_domain_uninit_resources(dmn);
uninit_caps:
 dr_domain_caps_uninit(dmn);
free_domain:
 kfree(dmn);
 return ((void*)0);
}
