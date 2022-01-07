
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ena_com_llq_info {int desc_list_entry_size; } ;
struct TYPE_2__ {scalar_t__ pbuf_dev_addr; } ;
struct ena_com_io_sq {int tail; int q_depth; int phase; TYPE_1__ desc_addr; int entries_in_tx_burst_left; int qid; struct ena_com_llq_info llq_info; } ;


 int ENOSPC ;
 int __iowrite64_copy (scalar_t__,int *,int) ;
 scalar_t__ is_llq_max_tx_burst_exists (struct ena_com_io_sq*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int ena_com_write_bounce_buffer_to_dev(struct ena_com_io_sq *io_sq,
           u8 *bounce_buffer)
{
 struct ena_com_llq_info *llq_info = &io_sq->llq_info;

 u16 dst_tail_mask;
 u32 dst_offset;

 dst_tail_mask = io_sq->tail & (io_sq->q_depth - 1);
 dst_offset = dst_tail_mask * llq_info->desc_list_entry_size;

 if (is_llq_max_tx_burst_exists(io_sq)) {
  if (unlikely(!io_sq->entries_in_tx_burst_left)) {
   pr_err("Error: trying to send more packets than tx burst allows\n");
   return -ENOSPC;
  }

  io_sq->entries_in_tx_burst_left--;
  pr_debug("decreasing entries_in_tx_burst_left of queue %d to %d\n",
    io_sq->qid, io_sq->entries_in_tx_burst_left);
 }




 wmb();


 __iowrite64_copy(io_sq->desc_addr.pbuf_dev_addr + dst_offset,
    bounce_buffer, (llq_info->desc_list_entry_size) / 8);

 io_sq->tail++;


 if (unlikely((io_sq->tail & (io_sq->q_depth - 1)) == 0))
  io_sq->phase ^= 1;

 return 0;
}
