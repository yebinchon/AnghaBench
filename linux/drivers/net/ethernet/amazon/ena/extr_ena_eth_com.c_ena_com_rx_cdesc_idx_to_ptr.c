
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ena_eth_io_rx_cdesc_base {int dummy; } ;
struct TYPE_2__ {scalar_t__ virt_addr; } ;
struct ena_com_io_cq {int q_depth; int cdesc_entry_size_in_bytes; TYPE_1__ cdesc_addr; } ;



__attribute__((used)) static struct ena_eth_io_rx_cdesc_base *
 ena_com_rx_cdesc_idx_to_ptr(struct ena_com_io_cq *io_cq, u16 idx)
{
 idx &= (io_cq->q_depth - 1);
 return (struct ena_eth_io_rx_cdesc_base *)
  ((uintptr_t)io_cq->cdesc_addr.virt_addr +
  idx * io_cq->cdesc_entry_size_in_bytes);
}
