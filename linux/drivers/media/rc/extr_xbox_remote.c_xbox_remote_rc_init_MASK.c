#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xbox_remote {TYPE_2__* interface; int /*<<< orphan*/  udev; int /*<<< orphan*/  rc_phys; int /*<<< orphan*/  rc_name; struct rc_dev* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct rc_dev {char* driver_name; TYPE_1__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  timeout; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  allowed_protocols; struct xbox_remote* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RC_PROTO_BIT_XBOX_DVD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xbox_remote_rc_close ; 
 int /*<<< orphan*/  xbox_remote_rc_open ; 

__attribute__((used)) static void FUNC2(struct xbox_remote *xbox_remote)
{
	struct rc_dev *rdev = xbox_remote->rdev;

	rdev->priv = xbox_remote;
	rdev->allowed_protocols = RC_PROTO_BIT_XBOX_DVD;
	rdev->driver_name = "xbox_remote";

	rdev->open = xbox_remote_rc_open;
	rdev->close = xbox_remote_rc_close;

	rdev->device_name = xbox_remote->rc_name;
	rdev->input_phys = xbox_remote->rc_phys;

	rdev->timeout = FUNC0(10);

	FUNC1(xbox_remote->udev, &rdev->input_id);
	rdev->dev.parent = &xbox_remote->interface->dev;
}