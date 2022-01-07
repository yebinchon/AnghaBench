
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int THIS_MODULE ;
 int _cxusb_power_ctrl (struct dvb_usb_device*,int) ;
 int adapter_nr ;
 int cxusb_aver_a868r_properties ;
 int cxusb_bluebird_dee1601_properties ;
 int cxusb_bluebird_dtt7579_properties ;
 int cxusb_bluebird_dualdig4_properties ;
 int cxusb_bluebird_dualdig4_rev2_properties ;
 int cxusb_bluebird_lgh064f_properties ;
 int cxusb_bluebird_lgz201_properties ;
 int cxusb_bluebird_nano2_needsfirmware_properties ;
 int cxusb_bluebird_nano2_properties ;
 int cxusb_d680_dmb_properties ;
 int cxusb_medion_check_intf (struct usb_interface*) ;
 int cxusb_medion_properties ;
 int cxusb_medion_put (struct dvb_usb_device*) ;
 int cxusb_medion_register_analog (struct dvb_usb_device*) ;
 int cxusb_medion_set_mode (struct dvb_usb_device*,int) ;
 int cxusb_mygica_d689_properties ;
 int dvb_usb_device_exit (struct usb_interface*) ;
 int dvb_usb_device_init (struct usb_interface*,int *,int ,struct dvb_usb_device**,int ) ;

__attribute__((used)) static int cxusb_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct dvb_usb_device *dvbdev;
 int ret;


 if (!dvb_usb_device_init(intf, &cxusb_medion_properties,
     THIS_MODULE, &dvbdev, adapter_nr)) {
  if (!cxusb_medion_check_intf(intf)) {
   ret = -ENODEV;
   goto ret_uninit;
  }

  _cxusb_power_ctrl(dvbdev, 1);
  ret = cxusb_medion_set_mode(dvbdev, 0);
  if (ret)
   goto ret_uninit;

  ret = cxusb_medion_register_analog(dvbdev);

  cxusb_medion_set_mode(dvbdev, 1);
  _cxusb_power_ctrl(dvbdev, 0);

  if (ret != 0)
   goto ret_uninit;


  cxusb_medion_put(dvbdev);

  return 0;
 } else if (!dvb_usb_device_init(intf,
     &cxusb_bluebird_lgh064f_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_dee1601_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_lgz201_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_dtt7579_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_dualdig4_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_nano2_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_nano2_needsfirmware_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf, &cxusb_aver_a868r_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf,
     &cxusb_bluebird_dualdig4_rev2_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf, &cxusb_d680_dmb_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     !dvb_usb_device_init(intf, &cxusb_mygica_d689_properties,
     THIS_MODULE, ((void*)0), adapter_nr) ||
     0)
  return 0;

 return -EINVAL;

ret_uninit:
 dvb_usb_device_exit(intf);

 return ret;
}
