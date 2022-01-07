
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_mkey {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int*,int ) ;
 int MLX5_MKC_ACCESS_MODE_PA ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int access_mode_1_0 ;
 int create_mkey_in ;
 int kvfree (int*) ;
 int* kvzalloc (int,int ) ;
 int length64 ;
 int lr ;
 int lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (struct mlx5_core_dev*,struct mlx5_core_mkey*,int*,int) ;
 int pd ;
 int qpn ;

__attribute__((used)) static int mlx5e_create_mkey(struct mlx5_core_dev *mdev, u32 pdn,
        struct mlx5_core_mkey *mkey)
{
 int inlen = MLX5_ST_SZ_BYTES(create_mkey_in);
 void *mkc;
 u32 *in;
 int err;

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
 MLX5_SET(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_PA);
 MLX5_SET(mkc, mkc, lw, 1);
 MLX5_SET(mkc, mkc, lr, 1);

 MLX5_SET(mkc, mkc, pd, pdn);
 MLX5_SET(mkc, mkc, length64, 1);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);

 err = mlx5_core_create_mkey(mdev, mkey, in, inlen);

 kvfree(in);
 return err;
}
