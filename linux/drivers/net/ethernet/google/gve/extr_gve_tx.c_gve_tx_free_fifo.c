
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_tx_fifo {int available; } ;


 int atomic_add (size_t,int *) ;

__attribute__((used)) static void gve_tx_free_fifo(struct gve_tx_fifo *fifo, size_t bytes)
{
 atomic_add(bytes, &fifo->available);
}
