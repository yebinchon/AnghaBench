
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_profile {int mask; int log_max_qp; } ;
struct TYPE_3__ {int * hca_cur; } ;
struct mlx5_core_dev {TYPE_1__ caps; struct mlx5_profile* profile; } ;
struct TYPE_4__ {int log_max_qp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,void*,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 size_t MLX5_CAP_GENERAL ;
 int MLX5_CAP_GEN_MAX (struct mlx5_core_dev*,int ) ;
 int MLX5_PROF_MASK_QP_SIZE ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int cache_line_128byte ;
 int cache_line_size () ;
 int capability ;
 int cmd_hca_cap ;
 int cmdif_checksum ;
 int dct ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int log_max_qp ;
 int log_uar_page_sz ;
 int memcpy (void*,int ,int) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,int ,int) ;
 int mlx5_core_get_caps (struct mlx5_core_dev*,size_t) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int,int) ;
 int mlx5_to_sw_pkey_sz (int ) ;
 int num_vhca_ports ;
 int pkey_table_size ;
 size_t prof_sel ;
 TYPE_2__* profile ;
 int set_caps (struct mlx5_core_dev*,void*,int,int ) ;
 int set_hca_cap_in ;
 int to_fw_pkey_sz (struct mlx5_core_dev*,int) ;
 int uar_4k ;

__attribute__((used)) static int handle_hca_cap(struct mlx5_core_dev *dev)
{
 void *set_ctx = ((void*)0);
 struct mlx5_profile *prof = dev->profile;
 int err = -ENOMEM;
 int set_sz = MLX5_ST_SZ_BYTES(set_hca_cap_in);
 void *set_hca_cap;

 set_ctx = kzalloc(set_sz, GFP_KERNEL);
 if (!set_ctx)
  goto query_ex;

 err = mlx5_core_get_caps(dev, MLX5_CAP_GENERAL);
 if (err)
  goto query_ex;

 set_hca_cap = MLX5_ADDR_OF(set_hca_cap_in, set_ctx,
       capability);
 memcpy(set_hca_cap, dev->caps.hca_cur[MLX5_CAP_GENERAL],
        MLX5_ST_SZ_BYTES(cmd_hca_cap));

 mlx5_core_dbg(dev, "Current Pkey table size %d Setting new size %d\n",
        mlx5_to_sw_pkey_sz(MLX5_CAP_GEN(dev, pkey_table_size)),
        128);

 MLX5_SET(cmd_hca_cap, set_hca_cap, pkey_table_size,
   to_fw_pkey_sz(dev, 128));


 if (MLX5_CAP_GEN_MAX(dev, log_max_qp) < profile[prof_sel].log_max_qp) {
  mlx5_core_warn(dev, "log_max_qp value in current profile is %d, changing it to HCA capability limit (%d)\n",
          profile[prof_sel].log_max_qp,
          MLX5_CAP_GEN_MAX(dev, log_max_qp));
  profile[prof_sel].log_max_qp = MLX5_CAP_GEN_MAX(dev, log_max_qp);
 }
 if (prof->mask & MLX5_PROF_MASK_QP_SIZE)
  MLX5_SET(cmd_hca_cap, set_hca_cap, log_max_qp,
    prof->log_max_qp);


 MLX5_SET(cmd_hca_cap, set_hca_cap, cmdif_checksum, 0);




 if (MLX5_CAP_GEN_MAX(dev, uar_4k) && PAGE_SIZE > 4096)
  MLX5_SET(cmd_hca_cap, set_hca_cap, uar_4k, 1);

 MLX5_SET(cmd_hca_cap, set_hca_cap, log_uar_page_sz, PAGE_SHIFT - 12);

 if (MLX5_CAP_GEN_MAX(dev, cache_line_128byte))
  MLX5_SET(cmd_hca_cap,
    set_hca_cap,
    cache_line_128byte,
    cache_line_size() >= 128 ? 1 : 0);

 if (MLX5_CAP_GEN_MAX(dev, dct))
  MLX5_SET(cmd_hca_cap, set_hca_cap, dct, 1);

 if (MLX5_CAP_GEN_MAX(dev, num_vhca_ports))
  MLX5_SET(cmd_hca_cap,
    set_hca_cap,
    num_vhca_ports,
    MLX5_CAP_GEN_MAX(dev, num_vhca_ports));

 err = set_caps(dev, set_ctx, set_sz,
         MLX5_SET_HCA_CAP_OP_MOD_GENERAL_DEVICE);

query_ex:
 kfree(set_ctx);
 return err;
}
