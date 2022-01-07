
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvaser_usb {int dummy; } ;


 int CMD_RESET_CHIP ;
 int kvaser_usb_leaf_send_simple_cmd (struct kvaser_usb*,int ,int) ;

__attribute__((used)) static int kvaser_usb_leaf_reset_chip(struct kvaser_usb *dev, int channel)
{
 return kvaser_usb_leaf_send_simple_cmd(dev, CMD_RESET_CHIP, channel);
}
