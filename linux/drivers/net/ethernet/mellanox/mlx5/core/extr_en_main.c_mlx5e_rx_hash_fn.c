
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETH_RSS_HASH_TOP ;
 int MLX5_RX_HASH_FN_INVERTED_XOR8 ;
 int MLX5_RX_HASH_FN_TOEPLITZ ;

__attribute__((used)) static int mlx5e_rx_hash_fn(int hfunc)
{
 return (hfunc == ETH_RSS_HASH_TOP) ?
        MLX5_RX_HASH_FN_TOEPLITZ :
        MLX5_RX_HASH_FN_INVERTED_XOR8;
}
