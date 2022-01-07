
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct anysee_state {int hw; } ;
struct TYPE_2__ {int dev; } ;


 int KBUILD_MODNAME ;
 int anysee_get_hw_info (struct dvb_usb_device*,int *) ;
 struct anysee_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_info (int *,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int anysee_read_config(struct dvb_usb_device *d)
{
 struct anysee_state *state = d_to_priv(d);
 int ret;
 u8 hw_info[3];





 ret = anysee_get_hw_info(d, hw_info);
 if (ret)
  goto error;

 ret = anysee_get_hw_info(d, hw_info);
 if (ret)
  goto error;




 dev_info(&d->udev->dev, "%s: firmware version %d.%d hardware id %d\n",
   KBUILD_MODNAME, hw_info[1], hw_info[2], hw_info[0]);

 state->hw = hw_info[0];
error:
 return ret;
}
