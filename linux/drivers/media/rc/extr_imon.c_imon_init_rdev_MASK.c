#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct rc_dev {int allowed_protocols; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  change_protocol; struct imon_context* priv; TYPE_1__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; } ;
struct imon_context {int vendor; int product; int rc_proto; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb_tx_buf; int /*<<< orphan*/  usbdev_intf0; int /*<<< orphan*/  phys_rdev; int /*<<< orphan*/  name_rdev; } ;
typedef  int /*<<< orphan*/  fp_packet ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_NAME ; 
 int /*<<< orphan*/  RC_DRIVER_SCANCODE ; 
 int /*<<< orphan*/  RC_MAP_IMON_MCE ; 
 int /*<<< orphan*/  RC_MAP_IMON_PAD ; 
 int RC_PROTO_BIT_IMON ; 
 int RC_PROTO_BIT_RC6_MCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct imon_context*) ; 
 int /*<<< orphan*/  imon_ir_change_protocol ; 
 int /*<<< orphan*/  FUNC3 (struct imon_context*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const**,int) ; 
 struct rc_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rc_dev*) ; 
 int FUNC7 (struct rc_dev*) ; 
 int FUNC8 (struct imon_context*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rc_dev *FUNC13(struct imon_context *ictx)
{
	struct rc_dev *rdev;
	int ret;
	static const unsigned char fp_packet[] = {
		0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x88 };

	rdev = FUNC5(RC_DRIVER_SCANCODE);
	if (!rdev) {
		FUNC0(ictx->dev, "remote control dev allocation failed\n");
		goto out;
	}

	FUNC9(ictx->name_rdev, sizeof(ictx->name_rdev),
		 "iMON Remote (%04x:%04x)", ictx->vendor, ictx->product);
	FUNC11(ictx->usbdev_intf0, ictx->phys_rdev,
		      sizeof(ictx->phys_rdev));
	FUNC10(ictx->phys_rdev, "/input0", sizeof(ictx->phys_rdev));

	rdev->device_name = ictx->name_rdev;
	rdev->input_phys = ictx->phys_rdev;
	FUNC12(ictx->usbdev_intf0, &rdev->input_id);
	rdev->dev.parent = ictx->dev;

	rdev->priv = ictx;
	/* iMON PAD or MCE */
	rdev->allowed_protocols = RC_PROTO_BIT_IMON | RC_PROTO_BIT_RC6_MCE;
	rdev->change_protocol = imon_ir_change_protocol;
	rdev->driver_name = MOD_NAME;

	/* Enable front-panel buttons and/or knobs */
	FUNC4(ictx->usb_tx_buf, &fp_packet, sizeof(fp_packet));
	ret = FUNC8(ictx);
	/* Not fatal, but warn about it */
	if (ret)
		FUNC1(ictx->dev, "panel buttons/knobs setup failed\n");

	if (ictx->product == 0xffdc) {
		FUNC2(ictx);
		rdev->allowed_protocols = ictx->rc_proto;
	}

	FUNC3(ictx);

	if (ictx->rc_proto == RC_PROTO_BIT_RC6_MCE)
		rdev->map_name = RC_MAP_IMON_MCE;
	else
		rdev->map_name = RC_MAP_IMON_PAD;

	ret = FUNC7(rdev);
	if (ret < 0) {
		FUNC0(ictx->dev, "remote input dev register failed\n");
		goto out;
	}

	return rdev;

out:
	FUNC6(rdev);
	return NULL;
}