
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* devices; } ;
struct dvb_usb_device {int i2c_adap; TYPE_2__ props; } ;
struct dvb_usb_adapter {TYPE_4__* fe_adap; struct dvb_usb_device* dev; } ;
struct TYPE_8__ {int ts_bus_ctrl; } ;
struct TYPE_10__ {TYPE_3__ ops; } ;
struct TYPE_9__ {TYPE_5__* fe; } ;
struct TYPE_6__ {int ** warm_ids; } ;


 int EIO ;
 size_t MEDION_MD95700 ;
 int cx22702_attach ;
 int cxusb_cx22702_config ;
 int cxusb_medion_fe_ts_bus_ctrl ;
 int cxusb_medion_set_mode (struct dvb_usb_device*,int) ;
 int * cxusb_table ;
 TYPE_5__* dvb_attach (int ,int *,int *) ;

__attribute__((used)) static int cxusb_cx22702_frontend_attach(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *dvbdev = adap->dev;
 bool is_medion = dvbdev->props.devices[0].warm_ids[0] ==
  &cxusb_table[MEDION_MD95700];

 if (is_medion) {
  int ret;

  ret = cxusb_medion_set_mode(dvbdev, 1);
  if (ret)
   return ret;
 }

 adap->fe_adap[0].fe = dvb_attach(cx22702_attach, &cxusb_cx22702_config,
      &dvbdev->i2c_adap);
 if (!adap->fe_adap[0].fe)
  return -EIO;

 if (is_medion)
  adap->fe_adap[0].fe->ops.ts_bus_ctrl =
   cxusb_medion_fe_ts_bus_ctrl;

 return 0;
}
