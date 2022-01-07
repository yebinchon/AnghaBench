
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_pio_txqueue {int dummy; } ;


 int b43_pio_cancel_tx_packets (struct b43_pio_txqueue*) ;
 int kfree (struct b43_pio_txqueue*) ;

__attribute__((used)) static void b43_destroy_pioqueue_tx(struct b43_pio_txqueue *q,
        const char *name)
{
 if (!q)
  return;
 b43_pio_cancel_tx_packets(q);
 kfree(q);
}
