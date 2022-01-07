
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int tail; } ;
struct fm10k_mbx_info {scalar_t__ pushed; int rx_dwords; int rx_messages; scalar_t__ head_len; int head; struct fm10k_mbx_fifo rx; } ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_MBX_ERR_SIZE ;
 scalar_t__ fm10k_fifo_unused (struct fm10k_mbx_fifo*) ;
 int fm10k_mbx_head_add (struct fm10k_mbx_info*,scalar_t__) ;
 scalar_t__ fm10k_mbx_index_len (struct fm10k_mbx_info*,int ,scalar_t__) ;
 scalar_t__ fm10k_mbx_pushed_tail_len (struct fm10k_mbx_info*) ;
 int fm10k_mbx_read_copy (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_validate_msg_size (struct fm10k_mbx_info*,scalar_t__) ;

__attribute__((used)) static s32 fm10k_mbx_push_tail(struct fm10k_hw *hw,
          struct fm10k_mbx_info *mbx,
          u16 tail)
{
 struct fm10k_mbx_fifo *fifo = &mbx->rx;
 u16 len, seq = fm10k_mbx_index_len(mbx, mbx->head, tail);


 len = fm10k_fifo_unused(fifo) - mbx->pushed;
 if (len > seq)
  len = seq;


 mbx->head = fm10k_mbx_head_add(mbx, len);
 mbx->head_len = len;


 if (!len)
  return 0;


 fm10k_mbx_read_copy(hw, mbx);


 if (fm10k_mbx_validate_msg_size(mbx, len))
  return FM10K_MBX_ERR_SIZE;


 mbx->pushed += len;


 for (len = fm10k_mbx_pushed_tail_len(mbx);
      len && (mbx->pushed >= len);
      len = fm10k_mbx_pushed_tail_len(mbx)) {
  fifo->tail += len;
  mbx->pushed -= len;
  mbx->rx_messages++;
  mbx->rx_dwords += len;
 }

 return 0;
}
