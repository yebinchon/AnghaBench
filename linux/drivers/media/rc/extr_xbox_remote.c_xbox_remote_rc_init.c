
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xbox_remote {TYPE_2__* interface; int udev; int rc_phys; int rc_name; struct rc_dev* rdev; } ;
struct TYPE_3__ {int * parent; } ;
struct rc_dev {char* driver_name; TYPE_1__ dev; int input_id; int timeout; int input_phys; int device_name; int close; int open; int allowed_protocols; struct xbox_remote* priv; } ;
struct TYPE_4__ {int dev; } ;


 int MS_TO_NS (int) ;
 int RC_PROTO_BIT_XBOX_DVD ;
 int usb_to_input_id (int ,int *) ;
 int xbox_remote_rc_close ;
 int xbox_remote_rc_open ;

__attribute__((used)) static void xbox_remote_rc_init(struct xbox_remote *xbox_remote)
{
 struct rc_dev *rdev = xbox_remote->rdev;

 rdev->priv = xbox_remote;
 rdev->allowed_protocols = RC_PROTO_BIT_XBOX_DVD;
 rdev->driver_name = "xbox_remote";

 rdev->open = xbox_remote_rc_open;
 rdev->close = xbox_remote_rc_close;

 rdev->device_name = xbox_remote->rc_name;
 rdev->input_phys = xbox_remote->rc_phys;

 rdev->timeout = MS_TO_NS(10);

 usb_to_input_id(xbox_remote->udev, &rdev->input_id);
 rdev->dev.parent = &xbox_remote->interface->dev;
}
