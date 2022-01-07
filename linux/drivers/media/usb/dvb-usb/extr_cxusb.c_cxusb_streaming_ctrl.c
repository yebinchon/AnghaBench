
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {TYPE_2__* devices; } ;
struct dvb_usb_device {TYPE_1__ props; } ;
struct dvb_usb_adapter {struct dvb_usb_device* dev; } ;
struct TYPE_4__ {int ** warm_ids; } ;


 int CMD_STREAMING_OFF ;
 int CMD_STREAMING_ON ;
 int CXUSB_OPEN_DIGITAL ;
 size_t MEDION_MD95700 ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int*,int,int *,int ) ;
 int cxusb_medion_get (struct dvb_usb_device*,int ) ;
 int cxusb_medion_put (struct dvb_usb_device*) ;
 int * cxusb_table ;

__attribute__((used)) static int cxusb_streaming_ctrl(struct dvb_usb_adapter *adap, int onoff)
{
 struct dvb_usb_device *dvbdev = adap->dev;
 bool is_medion = dvbdev->props.devices[0].warm_ids[0] ==
  &cxusb_table[MEDION_MD95700];
 u8 buf[2] = { 0x03, 0x00 };

 if (is_medion && onoff) {
  int ret;

  ret = cxusb_medion_get(dvbdev, CXUSB_OPEN_DIGITAL);
  if (ret != 0)
   return ret;
 }

 if (onoff)
  cxusb_ctrl_msg(dvbdev, CMD_STREAMING_ON, buf, 2, ((void*)0), 0);
 else
  cxusb_ctrl_msg(dvbdev, CMD_STREAMING_OFF, ((void*)0), 0, ((void*)0), 0);

 if (is_medion && !onoff)
  cxusb_medion_put(dvbdev);

 return 0;
}
