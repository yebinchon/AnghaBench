
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef uintptr_t u32 ;
typedef uintptr_t u16 ;
struct TYPE_2__ {scalar_t__ virt_addr; } ;
struct ena_com_io_sq {int tail; int q_depth; uintptr_t desc_entry_size; TYPE_1__ desc_addr; } ;



__attribute__((used)) static void *get_sq_desc_regular_queue(struct ena_com_io_sq *io_sq)
{
 u16 tail_masked;
 u32 offset;

 tail_masked = io_sq->tail & (io_sq->q_depth - 1);

 offset = tail_masked * io_sq->desc_entry_size;

 return (void *)((uintptr_t)io_sq->desc_addr.virt_addr + offset);
}
