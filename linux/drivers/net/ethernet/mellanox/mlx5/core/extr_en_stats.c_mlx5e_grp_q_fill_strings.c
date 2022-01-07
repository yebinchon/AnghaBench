
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct mlx5e_priv {scalar_t__ drop_rq_q_counter; scalar_t__ q_counter; } ;
struct TYPE_4__ {int format; } ;
struct TYPE_3__ {int format; } ;


 int ETH_GSTRING_LEN ;
 int NUM_DROP_RQ_COUNTERS ;
 int NUM_Q_COUNTERS ;
 TYPE_2__* drop_rq_stats_desc ;
 TYPE_1__* q_stats_desc ;
 int strcpy (int *,int ) ;

__attribute__((used)) static int mlx5e_grp_q_fill_strings(struct mlx5e_priv *priv, u8 *data, int idx)
{
 int i;

 for (i = 0; i < NUM_Q_COUNTERS && priv->q_counter; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         q_stats_desc[i].format);

 for (i = 0; i < NUM_DROP_RQ_COUNTERS && priv->drop_rq_q_counter; i++)
  strcpy(data + (idx++) * ETH_GSTRING_LEN,
         drop_rq_stats_desc[i].format);

 return idx;
}
