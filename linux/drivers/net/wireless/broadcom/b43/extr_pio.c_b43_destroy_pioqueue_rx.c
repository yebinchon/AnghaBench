
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_pio_rxqueue {int dummy; } ;


 int kfree (struct b43_pio_rxqueue*) ;

__attribute__((used)) static void b43_destroy_pioqueue_rx(struct b43_pio_rxqueue *q,
        const char *name)
{
 if (!q)
  return;
 kfree(q);
}
