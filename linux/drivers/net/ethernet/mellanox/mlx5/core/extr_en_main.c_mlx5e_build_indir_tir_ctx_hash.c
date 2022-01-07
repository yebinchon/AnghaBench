
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tirc_config {int l3_prot_type; int l4_prot_type; int rx_hash_fields; } ;
struct mlx5e_rss_params {scalar_t__ hfunc; int toeplitz_hash_key; } ;


 scalar_t__ ETH_RSS_HASH_TOP ;
 void* MLX5_ADDR_OF (void*,void*,int ) ;
 size_t MLX5_FLD_SZ_BYTES (void*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 int l3_prot_type ;
 int l4_prot_type ;
 int memcpy (void*,int ,size_t) ;
 int mlx5e_rx_hash_fn (scalar_t__) ;
 void* rx_hash_field_select ;
 int rx_hash_field_selector_inner ;
 int rx_hash_field_selector_outer ;
 int rx_hash_fn ;
 int rx_hash_symmetric ;
 int rx_hash_toeplitz_key ;
 int selected_fields ;

void mlx5e_build_indir_tir_ctx_hash(struct mlx5e_rss_params *rss_params,
        const struct mlx5e_tirc_config *ttconfig,
        void *tirc, bool inner)
{
 void *hfso = inner ? MLX5_ADDR_OF(tirc, tirc, rx_hash_field_selector_inner) :
        MLX5_ADDR_OF(tirc, tirc, rx_hash_field_selector_outer);

 MLX5_SET(tirc, tirc, rx_hash_fn, mlx5e_rx_hash_fn(rss_params->hfunc));
 if (rss_params->hfunc == ETH_RSS_HASH_TOP) {
  void *rss_key = MLX5_ADDR_OF(tirc, tirc,
          rx_hash_toeplitz_key);
  size_t len = MLX5_FLD_SZ_BYTES(tirc,
            rx_hash_toeplitz_key);

  MLX5_SET(tirc, tirc, rx_hash_symmetric, 1);
  memcpy(rss_key, rss_params->toeplitz_hash_key, len);
 }
 MLX5_SET(rx_hash_field_select, hfso, l3_prot_type,
   ttconfig->l3_prot_type);
 MLX5_SET(rx_hash_field_select, hfso, l4_prot_type,
   ttconfig->l4_prot_type);
 MLX5_SET(rx_hash_field_select, hfso, selected_fields,
   ttconfig->rx_hash_fields);
}
