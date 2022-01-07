
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void u32 ;
struct TYPE_2__ {int pdn; int mkey; scalar_t__ size; scalar_t__ dma; } ;
struct mlx5_fw_tracer {TYPE_1__ buff; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef int __be64 ;


 int DIV_ROUND_UP (int,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 int MLX5_MKC_ACCESS_MODE_MTT ;
 int MLX5_SET (void*,void*,int ,int) ;
 int MLX5_SET64 (void*,void*,int ,scalar_t__) ;
 int MLX5_ST_SZ_BYTES (void*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int TRACER_BUFFER_PAGE_NUM ;
 int access_mode_1_0 ;
 int bsf_octword_size ;
 int cpu_to_be64 (scalar_t__) ;
 void* create_mkey_in ;
 int klm_pas_mtt ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int len ;
 int log_page_size ;
 int lr ;
 int lw ;
 int memory_key_mkey_entry ;
 int mlx5_core_create_mkey (struct mlx5_core_dev*,int *,void*,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int pd ;
 int qpn ;
 int round_up (int,int) ;
 int start_addr ;
 int translations_octword_actual_size ;
 int translations_octword_size ;

__attribute__((used)) static int mlx5_fw_tracer_create_mkey(struct mlx5_fw_tracer *tracer)
{
 struct mlx5_core_dev *dev = tracer->dev;
 int err, inlen, i;
 __be64 *mtt;
 void *mkc;
 u32 *in;

 inlen = MLX5_ST_SZ_BYTES(create_mkey_in) +
   sizeof(*mtt) * round_up(TRACER_BUFFER_PAGE_NUM, 2);

 in = kvzalloc(inlen, GFP_KERNEL);
 if (!in)
  return -ENOMEM;

 MLX5_SET(create_mkey_in, in, translations_octword_actual_size,
   DIV_ROUND_UP(TRACER_BUFFER_PAGE_NUM, 2));
 mtt = (u64 *)MLX5_ADDR_OF(create_mkey_in, in, klm_pas_mtt);
 for (i = 0 ; i < TRACER_BUFFER_PAGE_NUM ; i++)
  mtt[i] = cpu_to_be64(tracer->buff.dma + i * PAGE_SIZE);

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);
 MLX5_SET(mkc, mkc, access_mode_1_0, MLX5_MKC_ACCESS_MODE_MTT);
 MLX5_SET(mkc, mkc, lr, 1);
 MLX5_SET(mkc, mkc, lw, 1);
 MLX5_SET(mkc, mkc, pd, tracer->buff.pdn);
 MLX5_SET(mkc, mkc, bsf_octword_size, 0);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);
 MLX5_SET(mkc, mkc, log_page_size, PAGE_SHIFT);
 MLX5_SET(mkc, mkc, translations_octword_size,
   DIV_ROUND_UP(TRACER_BUFFER_PAGE_NUM, 2));
 MLX5_SET64(mkc, mkc, start_addr, tracer->buff.dma);
 MLX5_SET64(mkc, mkc, len, tracer->buff.size);
 err = mlx5_core_create_mkey(dev, &tracer->buff.mkey, in, inlen);
 if (err)
  mlx5_core_warn(dev, "FWTracer: Failed to create mkey, %d\n", err);

 kvfree(in);

 return err;
}
