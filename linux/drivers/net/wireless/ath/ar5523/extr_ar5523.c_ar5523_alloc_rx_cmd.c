
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ar5523 {TYPE_1__* rx_cmd_urb; int rx_cmd_buf; int dev; } ;
struct TYPE_3__ {int transfer_dma; } ;


 int AR5523_MAX_RXCMDSZ ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int usb_alloc_coherent (int ,int ,int ,int *) ;
 TYPE_1__* usb_alloc_urb (int ,int ) ;
 int usb_free_urb (TYPE_1__*) ;

__attribute__((used)) static int ar5523_alloc_rx_cmd(struct ar5523 *ar)
{
 ar->rx_cmd_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!ar->rx_cmd_urb)
  return -ENOMEM;

 ar->rx_cmd_buf = usb_alloc_coherent(ar->dev, AR5523_MAX_RXCMDSZ,
         GFP_KERNEL,
         &ar->rx_cmd_urb->transfer_dma);
 if (!ar->rx_cmd_buf) {
  usb_free_urb(ar->rx_cmd_urb);
  return -ENOMEM;
 }
 return 0;
}
