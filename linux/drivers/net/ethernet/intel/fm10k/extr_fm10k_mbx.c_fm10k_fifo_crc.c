
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {int size; int * buffer; } ;


 int fm10k_crc_16b (int *,int,int) ;

__attribute__((used)) static u16 fm10k_fifo_crc(struct fm10k_mbx_fifo *fifo, u16 offset,
     u16 len, u16 seed)
{
 u32 *data = fifo->buffer + offset;


 offset = fifo->size - offset;


 if (offset < len) {
  seed = fm10k_crc_16b(data, seed, offset * 2);
  data = fifo->buffer;
  len -= offset;
 }


 return fm10k_crc_16b(data, seed, len * 2);
}
