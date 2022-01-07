
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mlx5e_priv {int ipsec; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_IPSEC_COUNTERS ;
 unsigned int NUM_IPSEC_HW_COUNTERS ;
 unsigned int NUM_IPSEC_SW_COUNTERS ;
 TYPE_2__* mlx5e_ipsec_hw_stats_desc ;
 TYPE_1__* mlx5e_ipsec_sw_stats_desc ;
 int strcpy (int *,int ) ;

int mlx5e_ipsec_get_strings(struct mlx5e_priv *priv, uint8_t *data)
{
 unsigned int i, idx = 0;

 if (!priv->ipsec)
  return 0;

 for (i = 0; i < NUM_IPSEC_HW_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         mlx5e_ipsec_hw_stats_desc[i].format);

 for (i = 0; i < NUM_IPSEC_SW_COUNTERS; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         mlx5e_ipsec_sw_stats_desc[i].format);

 return NUM_IPSEC_COUNTERS;
}
