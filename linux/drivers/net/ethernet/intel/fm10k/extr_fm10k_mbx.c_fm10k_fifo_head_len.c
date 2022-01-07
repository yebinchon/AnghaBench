
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {int * buffer; } ;


 int FM10K_TLV_DWORD_LEN (int ) ;
 scalar_t__ fm10k_fifo_empty (struct fm10k_mbx_fifo*) ;
 int fm10k_fifo_head_offset (struct fm10k_mbx_fifo*,int ) ;

__attribute__((used)) static u16 fm10k_fifo_head_len(struct fm10k_mbx_fifo *fifo)
{
 u32 *head = fifo->buffer + fm10k_fifo_head_offset(fifo, 0);


 if (fm10k_fifo_empty(fifo))
  return 0;


 return FM10K_TLV_DWORD_LEN(*head);
}
