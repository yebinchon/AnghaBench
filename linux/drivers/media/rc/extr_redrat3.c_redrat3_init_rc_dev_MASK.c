#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct redrat3_dev {TYPE_3__* udev; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; struct device* dev; } ;
struct TYPE_6__ {struct device* parent; } ;
struct rc_dev {int /*<<< orphan*/  map_name; void* rx_resolution; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  s_carrier_report; int /*<<< orphan*/  s_tx_carrier; int /*<<< orphan*/  tx_ir; int /*<<< orphan*/  s_timeout; void* timeout; void* max_timeout; void* min_timeout; int /*<<< orphan*/  allowed_protocols; struct redrat3_dev* priv; TYPE_2__ dev; int /*<<< orphan*/  input_id; int /*<<< orphan*/  input_phys; int /*<<< orphan*/  device_name; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_HAUPPAUGE ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  RR3_RX_MAX_TIMEOUT ; 
 int /*<<< orphan*/  RR3_RX_MIN_TIMEOUT ; 
 scalar_t__ USB_RR3IIUSB_PRODUCT_ID ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct rc_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rc_dev*) ; 
 int FUNC6 (struct rc_dev*) ; 
 int FUNC7 (struct redrat3_dev*) ; 
 int /*<<< orphan*/  redrat3_set_timeout ; 
 int /*<<< orphan*/  redrat3_set_tx_carrier ; 
 int /*<<< orphan*/  redrat3_transmit_ir ; 
 int /*<<< orphan*/  redrat3_wideband_receiver ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rc_dev *FUNC11(struct redrat3_dev *rr3)
{
	struct device *dev = rr3->dev;
	struct rc_dev *rc;
	int ret;
	u16 prod = FUNC3(rr3->udev->descriptor.idProduct);

	rc = FUNC4(RC_DRIVER_IR_RAW);
	if (!rc)
		return NULL;

	FUNC8(rr3->name, sizeof(rr3->name),
		 "RedRat3%s Infrared Remote Transceiver",
		 prod == USB_RR3IIUSB_PRODUCT_ID ? "-II" : "");

	FUNC9(rr3->udev, rr3->phys, sizeof(rr3->phys));

	rc->device_name = rr3->name;
	rc->input_phys = rr3->phys;
	FUNC10(rr3->udev, &rc->input_id);
	rc->dev.parent = dev;
	rc->priv = rr3;
	rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	rc->min_timeout = FUNC0(RR3_RX_MIN_TIMEOUT);
	rc->max_timeout = FUNC0(RR3_RX_MAX_TIMEOUT);
	rc->timeout = FUNC1(FUNC7(rr3));
	rc->s_timeout = redrat3_set_timeout;
	rc->tx_ir = redrat3_transmit_ir;
	rc->s_tx_carrier = redrat3_set_tx_carrier;
	rc->s_carrier_report = redrat3_wideband_receiver;
	rc->driver_name = DRIVER_NAME;
	rc->rx_resolution = FUNC1(2);
	rc->map_name = RC_MAP_HAUPPAUGE;

	ret = FUNC6(rc);
	if (ret < 0) {
		FUNC2(dev, "remote dev registration failed\n");
		goto out;
	}

	return rc;

out:
	FUNC5(rc);
	return NULL;
}