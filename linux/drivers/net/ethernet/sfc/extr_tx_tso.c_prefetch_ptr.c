
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct efx_tx_queue {TYPE_2__ txd; scalar_t__ buffer; } ;
typedef int efx_qword_t ;


 unsigned int efx_tx_queue_get_insert_index (struct efx_tx_queue*) ;
 int prefetch (char*) ;

__attribute__((used)) static inline void prefetch_ptr(struct efx_tx_queue *tx_queue)
{
 unsigned int insert_ptr = efx_tx_queue_get_insert_index(tx_queue);
 char *ptr;

 ptr = (char *) (tx_queue->buffer + insert_ptr);
 prefetch(ptr);
 prefetch(ptr + 0x80);

 ptr = (char *) (((efx_qword_t *)tx_queue->txd.buf.addr) + insert_ptr);
 prefetch(ptr);
 prefetch(ptr + 0x80);
}
