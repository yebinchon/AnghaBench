
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mlx4_en_stats_bitmap {int mutex; int bitmap; } ;
struct TYPE_2__ {int flags2; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 int MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN ;
 scalar_t__ NUM_FLOW_PRIORITY_STATS_RX ;
 scalar_t__ NUM_FLOW_PRIORITY_STATS_TX ;
 int NUM_FLOW_STATS ;
 scalar_t__ NUM_FLOW_STATS_RX ;
 scalar_t__ NUM_FLOW_STATS_TX ;
 int NUM_MAIN_STATS ;
 int NUM_PF_STATS ;
 int NUM_PORT_STATS ;
 int bitmap_clear (int ,int,int ) ;
 int bitmap_set (int ,int,scalar_t__) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx4_en_update_pfc_stats_bitmap(struct mlx4_dev *dev,
         struct mlx4_en_stats_bitmap *stats_bitmap,
         u8 rx_ppp, u8 rx_pause,
         u8 tx_ppp, u8 tx_pause)
{
 int last_i = NUM_MAIN_STATS + NUM_PORT_STATS + NUM_PF_STATS;

 if (!mlx4_is_slave(dev) &&
     (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_FLOWSTATS_EN)) {
  mutex_lock(&stats_bitmap->mutex);
  bitmap_clear(stats_bitmap->bitmap, last_i, NUM_FLOW_STATS);

  if (rx_ppp)
   bitmap_set(stats_bitmap->bitmap, last_i,
       NUM_FLOW_PRIORITY_STATS_RX);
  last_i += NUM_FLOW_PRIORITY_STATS_RX;

  if (rx_pause && !(rx_ppp))
   bitmap_set(stats_bitmap->bitmap, last_i,
       NUM_FLOW_STATS_RX);
  last_i += NUM_FLOW_STATS_RX;

  if (tx_ppp)
   bitmap_set(stats_bitmap->bitmap, last_i,
       NUM_FLOW_PRIORITY_STATS_TX);
  last_i += NUM_FLOW_PRIORITY_STATS_TX;

  if (tx_pause && !(tx_ppp))
   bitmap_set(stats_bitmap->bitmap, last_i,
       NUM_FLOW_STATS_TX);
  last_i += NUM_FLOW_STATS_TX;

  mutex_unlock(&stats_bitmap->mutex);
 }
}
