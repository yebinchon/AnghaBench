
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct ef4_tx_queue {TYPE_2__ txd; } ;
typedef int ef4_qword_t ;



__attribute__((used)) static inline ef4_qword_t *
ef4_tx_desc(struct ef4_tx_queue *tx_queue, unsigned int index)
{
 return ((ef4_qword_t *) (tx_queue->txd.buf.addr)) + index;
}
