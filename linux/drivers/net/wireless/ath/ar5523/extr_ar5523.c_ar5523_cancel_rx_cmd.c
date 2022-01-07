
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523 {int rx_cmd_urb; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void ar5523_cancel_rx_cmd(struct ar5523 *ar)
{
 usb_kill_urb(ar->rx_cmd_urb);
}
