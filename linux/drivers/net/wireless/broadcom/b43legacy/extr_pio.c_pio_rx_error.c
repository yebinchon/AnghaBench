
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct b43legacy_pioqueue {scalar_t__ mmio_base; TYPE_1__* dev; } ;
struct TYPE_2__ {int wl; } ;


 scalar_t__ B43legacy_MMIO_PIO1_BASE ;
 int B43legacy_PIO_RXCTL ;
 int B43legacy_PIO_RXCTL_READY ;
 int B43legacy_PIO_RXDATA ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_pio_read (struct b43legacy_pioqueue*,int ) ;
 int b43legacy_pio_write (struct b43legacy_pioqueue*,int ,int ) ;
 int b43legacyerr (int ,char*,char const*) ;

__attribute__((used)) static void pio_rx_error(struct b43legacy_pioqueue *queue,
    int clear_buffers,
    const char *error)
{
 int i;

 b43legacyerr(queue->dev->wl, "PIO RX error: %s\n", error);
 b43legacy_pio_write(queue, B43legacy_PIO_RXCTL,
       B43legacy_PIO_RXCTL_READY);
 if (clear_buffers) {
  B43legacy_WARN_ON(queue->mmio_base != B43legacy_MMIO_PIO1_BASE);
  for (i = 0; i < 15; i++) {

   b43legacy_pio_read(queue, B43legacy_PIO_RXDATA);
  }
 }
}
