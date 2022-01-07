
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar5523 {TYPE_1__* rx_cmd_urb; int rx_cmd_buf; int dev; } ;
struct TYPE_2__ {int transfer_dma; } ;


 int AR5523_MAX_RXCMDSZ ;
 int usb_free_coherent (int ,int ,int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static void ar5523_free_rx_cmd(struct ar5523 *ar)
{
 usb_free_coherent(ar->dev, AR5523_MAX_RXCMDSZ,
     ar->rx_cmd_buf, ar->rx_cmd_urb->transfer_dma);
 usb_free_urb(ar->rx_cmd_urb);
}
