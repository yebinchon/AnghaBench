
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct req_t {int member_5; int* member_6; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;


 int COLD ;
 int GET_CONFIG ;
 int WARM ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int af9015_identify_state(struct dvb_usb_device *d, const char **name)
{
 struct usb_interface *intf = d->intf;
 int ret;
 u8 reply;
 struct req_t req = {GET_CONFIG, 0, 0, 0, 0, 1, &reply};

 ret = af9015_ctrl_msg(d, &req);
 if (ret)
  return ret;

 dev_dbg(&intf->dev, "reply %02x\n", reply);

 if (reply == 0x02)
  ret = WARM;
 else
  ret = COLD;

 return ret;
}
