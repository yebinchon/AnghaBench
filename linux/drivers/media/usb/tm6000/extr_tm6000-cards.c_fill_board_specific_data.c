
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tm6000_core {size_t model; int v4l2_dev; TYPE_1__* udev; int quirks; int rinput; int * vinput; int caps; int demod_addr; int ir_codes; int gpio; int tuner_addr; int tuner_type; int dev_type; } ;
struct TYPE_4__ {int rinput; int * vinput; int caps; int demod_addr; int ir_codes; int gpio; int tuner_addr; int tuner_type; int type; } ;
struct TYPE_3__ {int dev; } ;


 int TM6000_QUIRK_NO_USB_DELAY ;


 TYPE_2__* tm6000_boards ;
 int tm6000_init (struct tm6000_core*) ;
 int v4l2_device_register (int *,int *) ;

__attribute__((used)) static int fill_board_specific_data(struct tm6000_core *dev)
{
 int rc;

 dev->dev_type = tm6000_boards[dev->model].type;
 dev->tuner_type = tm6000_boards[dev->model].tuner_type;
 dev->tuner_addr = tm6000_boards[dev->model].tuner_addr;

 dev->gpio = tm6000_boards[dev->model].gpio;

 dev->ir_codes = tm6000_boards[dev->model].ir_codes;

 dev->demod_addr = tm6000_boards[dev->model].demod_addr;

 dev->caps = tm6000_boards[dev->model].caps;

 dev->vinput[0] = tm6000_boards[dev->model].vinput[0];
 dev->vinput[1] = tm6000_boards[dev->model].vinput[1];
 dev->vinput[2] = tm6000_boards[dev->model].vinput[2];
 dev->rinput = tm6000_boards[dev->model].rinput;


 switch (dev->model) {
 case 128:
 case 129:
  dev->quirks |= TM6000_QUIRK_NO_USB_DELAY;
  break;

 default:
  break;
 }


 rc = tm6000_init(dev);
 if (rc < 0)
  return rc;

 return v4l2_device_register(&dev->udev->dev, &dev->v4l2_dev);
}
