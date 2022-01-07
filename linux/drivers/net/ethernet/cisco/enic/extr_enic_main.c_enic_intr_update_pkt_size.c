
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vnic_rx_bytes_counter {int small_pkt_bytes_cnt; int large_pkt_bytes_cnt; } ;


 scalar_t__ ENIC_LARGE_PKT_THRESHOLD ;

__attribute__((used)) static void enic_intr_update_pkt_size(struct vnic_rx_bytes_counter *pkt_size,
          u32 pkt_len)
{
 if (ENIC_LARGE_PKT_THRESHOLD <= pkt_len)
  pkt_size->large_pkt_bytes_cnt += pkt_len;
 else
  pkt_size->small_pkt_bytes_cnt += pkt_len;
}
