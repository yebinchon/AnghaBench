
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx5e_priv {int tls; } ;
struct TYPE_2__ {int format; } ;


 int ETH_GSTRING_LEN ;
 unsigned int NUM_TLS_SW_COUNTERS ;
 TYPE_1__* mlx5e_tls_sw_stats_desc ;
 int strcpy (int *,int ) ;

int mlx5e_tls_get_strings(struct mlx5e_priv *priv, uint8_t *data)
{
 unsigned int i, idx = 0;

 if (!priv->tls)
  return 0;

 for (i = 0; i < NUM_TLS_SW_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         mlx5e_tls_sw_stats_desc[i].format);

 return NUM_TLS_SW_COUNTERS;
}
