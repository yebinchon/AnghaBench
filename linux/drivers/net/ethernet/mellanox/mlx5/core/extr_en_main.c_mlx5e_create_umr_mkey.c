
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct mlx5_core_mkey {int dummy; } ;
struct TYPE_2__ {int pdn; } ;
struct mlx5_core_dev {TYPE_1__ mlx5e_res; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_MKC_ACCESS_MODE_MTT ;
 int MLX5_MTT_OCTW (int) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int access_mode_1_0 ;
 int create_mkey_in ;
 int free ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int len ;
 int log_page_size ;
 int lr ;
 int lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (struct mlx5_core_dev*,struct mlx5_core_mkey*,int *,int) ;
 int pd ;
 int qpn ;
 int translations_octword_size ;
 int umr_en ;

__attribute__((used)) static int mlx5e_create_umr_mkey(struct mlx5_core_dev *mdev,
     u64 npages, u8 page_shift,
     struct mlx5_core_mkey *umr_mkey)
{
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 void *mkc;
 u32 *in;
 int err;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);

 MLX5_SET(mkc, mkc, free, 1);
 MLX5_SET(mkc, mkc, umr_en, 1);
 MLX5_SET(mkc, mkc, lw, 1);
 MLX5_SET(mkc, mkc, lr, 1);
 MLX5_SET(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_MTT);

 MLX5_SET(mkc, mkc, qpn, 0xffffff);
 MLX5_SET(mkc, mkc, pd, mdev->mlx5e_res.pdn);
 MLX5_SET64(mkc, mkc, len, npages << page_shift);
 MLX5_SET(mkc, mkc, translations_octword_size,
   MLX5_MTT_OCTW(npages));
 MLX5_SET(mkc, mkc, log_page_size, page_shift);

 err = mlx5_core_create_mkey(mdev, umr_mkey, in, inlen);

 kvfree(in);
 return err;
}
