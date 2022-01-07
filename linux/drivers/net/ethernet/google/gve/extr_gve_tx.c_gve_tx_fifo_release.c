
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gve_tx_fifo {scalar_t__ size; int base; int available; } ;
struct gve_priv {int dummy; } ;


 int WARN (int,char*) ;
 scalar_t__ atomic_read (int *) ;
 int vunmap (int ) ;

__attribute__((used)) static void gve_tx_fifo_release(struct gve_priv *priv, struct gve_tx_fifo *fifo)
{
 WARN(atomic_read(&fifo->available) != fifo->size,
      "Releasing non-empty fifo");

 vunmap(fifo->base);
}
