
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {int size; int * buffer; } ;


 int fm10k_fifo_tail_offset (struct fm10k_mbx_fifo*,int) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void fm10k_fifo_write_copy(struct fm10k_mbx_fifo *fifo,
      const u32 *msg, u16 tail_offset, u16 len)
{
 u16 end = fm10k_fifo_tail_offset(fifo, tail_offset);
 u32 *tail = fifo->buffer + end;


 end = fifo->size - end;


 if (end < len)
  memcpy(fifo->buffer, msg + end, (len - end) << 2);
 else
  end = len;


 memcpy(tail, msg, end << 2);
}
