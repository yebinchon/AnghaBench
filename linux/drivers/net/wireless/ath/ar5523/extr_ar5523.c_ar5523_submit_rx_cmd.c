
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ar5523 {TYPE_1__* rx_cmd_urb; int rx_cmd_buf; int dev; } ;
struct TYPE_3__ {int transfer_flags; } ;


 int AR5523_MAX_RXCMDSZ ;
 int ENODEV ;
 int GFP_ATOMIC ;
 int URB_NO_TRANSFER_DMA_MAP ;
 int ar5523_cmd_rx_cb ;
 int ar5523_cmd_rx_pipe (int ) ;
 int ar5523_err (struct ar5523*,char*,int) ;
 int usb_fill_bulk_urb (TYPE_1__*,int ,int ,int ,int ,int ,struct ar5523*) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int ar5523_submit_rx_cmd(struct ar5523 *ar)
{
 int error;

 usb_fill_bulk_urb(ar->rx_cmd_urb, ar->dev,
     ar5523_cmd_rx_pipe(ar->dev), ar->rx_cmd_buf,
     AR5523_MAX_RXCMDSZ, ar5523_cmd_rx_cb, ar);
 ar->rx_cmd_urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;

 error = usb_submit_urb(ar->rx_cmd_urb, GFP_ATOMIC);
 if (error) {
  if (error != -ENODEV)
   ar5523_err(ar, "error %d when submitting rx urb\n",
       error);
  return error;
 }
 return 0;
}
