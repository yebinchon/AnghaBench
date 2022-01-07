
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
typedef int buf ;


 int CMD_GET_HW_INFO ;
 int anysee_ctrl_msg (struct dvb_usb_device*,int *,int,int *,int) ;

__attribute__((used)) static int anysee_get_hw_info(struct dvb_usb_device *d, u8 *id)
{
 u8 buf[] = {CMD_GET_HW_INFO};
 return anysee_ctrl_msg(d, buf, sizeof(buf), id, 3);
}
