
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct si4713_usb_device {TYPE_3__ i2c_adapter; TYPE_2__* usbdev; } ;
struct TYPE_7__ {int dev; } ;


 int i2c_add_adapter (TYPE_3__*) ;
 int i2c_set_adapdata (TYPE_3__*,struct si4713_usb_device*) ;
 TYPE_3__ si4713_i2c_adapter_template ;

__attribute__((used)) static int si4713_register_i2c_adapter(struct si4713_usb_device *radio)
{
 radio->i2c_adapter = si4713_i2c_adapter_template;

 radio->i2c_adapter.dev.parent = &radio->usbdev->dev;
 i2c_set_adapdata(&radio->i2c_adapter, radio);

 return i2c_add_adapter(&radio->i2c_adapter);
}
