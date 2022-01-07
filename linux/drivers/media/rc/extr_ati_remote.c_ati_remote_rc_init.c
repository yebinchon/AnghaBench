
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct rc_dev {char* driver_name; TYPE_1__ dev; int input_id; int input_phys; int device_name; int close; int open; int allowed_protocols; struct ati_remote* priv; } ;
struct ati_remote {TYPE_2__* interface; int udev; int rc_phys; int rc_name; struct rc_dev* rdev; } ;
struct TYPE_4__ {int dev; } ;


 int RC_PROTO_BIT_OTHER ;
 int ati_remote_rc_close ;
 int ati_remote_rc_open ;
 int usb_to_input_id (int ,int *) ;

__attribute__((used)) static void ati_remote_rc_init(struct ati_remote *ati_remote)
{
 struct rc_dev *rdev = ati_remote->rdev;

 rdev->priv = ati_remote;
 rdev->allowed_protocols = RC_PROTO_BIT_OTHER;
 rdev->driver_name = "ati_remote";

 rdev->open = ati_remote_rc_open;
 rdev->close = ati_remote_rc_close;

 rdev->device_name = ati_remote->rc_name;
 rdev->input_phys = ati_remote->rc_phys;

 usb_to_input_id(ati_remote->udev, &rdev->input_id);
 rdev->dev.parent = &ati_remote->interface->dev;
}
