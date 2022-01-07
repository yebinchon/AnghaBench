
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int * buffer; } ;
struct fm10k_mbx_info {scalar_t__ pushed; scalar_t__ max_size; struct fm10k_mbx_fifo rx; } ;


 scalar_t__ FM10K_TLV_DWORD_LEN (int ) ;
 int fm10k_fifo_tail_offset (struct fm10k_mbx_fifo*,scalar_t__) ;

__attribute__((used)) static u16 fm10k_mbx_validate_msg_size(struct fm10k_mbx_info *mbx, u16 len)
{
 struct fm10k_mbx_fifo *fifo = &mbx->rx;
 u16 total_len = 0, msg_len;


 len += mbx->pushed;


 do {
  u32 *msg;

  msg = fifo->buffer + fm10k_fifo_tail_offset(fifo, total_len);
  msg_len = FM10K_TLV_DWORD_LEN(*msg);
  total_len += msg_len;
 } while (total_len < len);


 if ((len < total_len) && (msg_len <= mbx->max_size))
  return 0;


 return (len < total_len) ? len : (len - total_len);
}
