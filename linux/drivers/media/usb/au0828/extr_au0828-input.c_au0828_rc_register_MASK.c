#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_9__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_7__ {int version; void* product; void* vendor; int /*<<< orphan*/  bustype; } ;
struct rc_dev {char* driver_name; int allowed_protocols; TYPE_4__ dev; TYPE_2__ input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; int /*<<< orphan*/  map_name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct au0828_rc* priv; } ;
struct au0828_rc {int polling; int /*<<< orphan*/  name; int /*<<< orphan*/  phys; scalar_t__ i2c_dev_addr; int /*<<< orphan*/  get_key_i2c; struct rc_dev* rc; struct au0828_dev* dev; } ;
struct TYPE_6__ {char* name; scalar_t__ has_ir_i2c; } ;
struct au0828_dev {int boardnr; struct au0828_rc* ir; TYPE_5__* usbdev; TYPE_1__ board; } ;
struct TYPE_8__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; TYPE_3__ descriptor; } ;

/* Variables and functions */
#define  AU0828_BOARD_HAUPPAUGE_HVR950Q 128 
 int /*<<< orphan*/  BUS_USB ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_HAUPPAUGE ; 
 int RC_PROTO_BIT_NEC ; 
 int RC_PROTO_BIT_NEC32 ; 
 int RC_PROTO_BIT_NECX ; 
 int RC_PROTO_BIT_RC5 ; 
 int /*<<< orphan*/  au0828_get_key_au8522 ; 
 scalar_t__ FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  au0828_rc_start ; 
 int /*<<< orphan*/  au0828_rc_stop ; 
 scalar_t__ disable_ir ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_rc*) ; 
 struct au0828_rc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 struct rc_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rc_dev*) ; 
 int FUNC7 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct au0828_dev *dev)
{
	struct au0828_rc *ir;
	struct rc_dev *rc;
	int err = -ENOMEM;
	u16 i2c_rc_dev_addr = 0;

	if (!dev->board.has_ir_i2c || disable_ir)
		return 0;

	i2c_rc_dev_addr = FUNC0(dev);
	if (!i2c_rc_dev_addr)
		return -ENODEV;

	ir = FUNC2(sizeof(*ir), GFP_KERNEL);
	rc = FUNC5(RC_DRIVER_IR_RAW);
	if (!ir || !rc)
		goto error;

	/* record handles to ourself */
	ir->dev = dev;
	dev->ir = ir;
	ir->rc = rc;

	rc->priv = ir;
	rc->open = au0828_rc_start;
	rc->close = au0828_rc_stop;

	if (dev->board.has_ir_i2c) {	/* external i2c device */
		switch (dev->boardnr) {
		case AU0828_BOARD_HAUPPAUGE_HVR950Q:
			rc->map_name = RC_MAP_HAUPPAUGE;
			ir->get_key_i2c = au0828_get_key_au8522;
			break;
		default:
			err = -ENODEV;
			goto error;
		}

		ir->i2c_dev_addr = i2c_rc_dev_addr;
	}

	/* This is how often we ask the chip for IR information */
	ir->polling = 100; /* ms */

	/* init input device */
	FUNC8(ir->name, sizeof(ir->name), "au0828 IR (%s)",
		 dev->board.name);

	FUNC10(dev->usbdev, ir->phys, sizeof(ir->phys));
	FUNC9(ir->phys, "/input0", sizeof(ir->phys));

	rc->device_name = ir->name;
	rc->input_phys = ir->phys;
	rc->input_id.bustype = BUS_USB;
	rc->input_id.version = 1;
	rc->input_id.vendor = FUNC3(dev->usbdev->descriptor.idVendor);
	rc->input_id.product = FUNC3(dev->usbdev->descriptor.idProduct);
	rc->dev.parent = &dev->usbdev->dev;
	rc->driver_name = "au0828-input";
	rc->allowed_protocols = RC_PROTO_BIT_NEC | RC_PROTO_BIT_NECX |
				RC_PROTO_BIT_NEC32 | RC_PROTO_BIT_RC5;

	/* all done */
	err = FUNC7(rc);
	if (err)
		goto error;

	FUNC4("Remote controller %s initialized\n", ir->name);

	return 0;

error:
	dev->ir = NULL;
	FUNC6(rc);
	FUNC1(ir);
	return err;
}