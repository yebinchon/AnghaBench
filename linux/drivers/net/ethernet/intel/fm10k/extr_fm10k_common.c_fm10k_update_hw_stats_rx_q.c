
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_5__ {int count; } ;
struct TYPE_6__ {int count; } ;
struct fm10k_hw_stats_q {int rx_stats_idx; TYPE_1__ rx_bytes; TYPE_2__ rx_packets; TYPE_2__ rx_drops; } ;
struct fm10k_hw {int dummy; } ;


 int FM10K_QBRC_L (int) ;
 int FM10K_QPRC (int) ;
 int FM10K_QPRDC (int) ;
 int FM10K_RXQCTL (int) ;
 int FM10K_RXQCTL_ID_MASK ;
 int FM10K_STAT_VALID ;
 int fm10k_read_hw_stats_32b (struct fm10k_hw*,int ,TYPE_2__*) ;
 scalar_t__ fm10k_read_hw_stats_48b (struct fm10k_hw*,int ,TYPE_1__*) ;
 int fm10k_read_reg (struct fm10k_hw*,int ) ;
 int fm10k_update_hw_base_32b (TYPE_2__*,int) ;
 int fm10k_update_hw_base_48b (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void fm10k_update_hw_stats_rx_q(struct fm10k_hw *hw,
           struct fm10k_hw_stats_q *q,
           u32 idx)
{
 u32 id_rx, id_rx_prev, rx_packets, rx_drops;
 u64 rx_bytes = 0;


 id_rx = fm10k_read_reg(hw, FM10K_RXQCTL(idx));


 do {
  rx_drops = fm10k_read_hw_stats_32b(hw, FM10K_QPRDC(idx),
         &q->rx_drops);

  rx_packets = fm10k_read_hw_stats_32b(hw, FM10K_QPRC(idx),
           &q->rx_packets);

  if (rx_packets)
   rx_bytes = fm10k_read_hw_stats_48b(hw,
          FM10K_QBRC_L(idx),
          &q->rx_bytes);


  id_rx_prev = id_rx;
  id_rx = fm10k_read_reg(hw, FM10K_RXQCTL(idx));
 } while ((id_rx ^ id_rx_prev) & FM10K_RXQCTL_ID_MASK);


 id_rx &= FM10K_RXQCTL_ID_MASK;
 id_rx |= FM10K_STAT_VALID;


 if (q->rx_stats_idx == id_rx) {
  q->rx_drops.count += rx_drops;
  q->rx_packets.count += rx_packets;
  q->rx_bytes.count += rx_bytes;
 }


 fm10k_update_hw_base_32b(&q->rx_drops, rx_drops);
 fm10k_update_hw_base_32b(&q->rx_packets, rx_packets);
 fm10k_update_hw_base_48b(&q->rx_bytes, rx_bytes);

 q->rx_stats_idx = id_rx;
}
