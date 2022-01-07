
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_pioqueue {int dummy; } ;


 int B43legacy_PIO_TXCTL ;
 int B43legacy_PIO_TXCTL_INIT ;
 int b43legacy_pio_write (struct b43legacy_pioqueue*,int ,int ) ;

__attribute__((used)) static void tx_start(struct b43legacy_pioqueue *queue)
{
 b43legacy_pio_write(queue, B43legacy_PIO_TXCTL,
       B43legacy_PIO_TXCTL_INIT);
}
