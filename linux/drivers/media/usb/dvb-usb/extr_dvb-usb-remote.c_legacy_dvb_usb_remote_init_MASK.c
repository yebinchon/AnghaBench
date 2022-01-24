#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * parent; } ;
struct input_dev {char* name; int* rep; int /*<<< orphan*/  keybit; int /*<<< orphan*/  setkeycode; int /*<<< orphan*/  getkeycode; TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  phys; int /*<<< orphan*/ * evbit; } ;
struct TYPE_9__ {int rc_map_size; int rc_interval; TYPE_2__* rc_map_table; } ;
struct TYPE_10__ {TYPE_3__ legacy; } ;
struct TYPE_11__ {TYPE_4__ rc; } ;
struct dvb_usb_device {int /*<<< orphan*/  state; int /*<<< orphan*/  rc_query_work; TYPE_5__ props; int /*<<< orphan*/ * rc_dev; struct input_dev* input_dev; TYPE_6__* udev; int /*<<< orphan*/  rc_phys; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DVB_USB_STATE_REMOTE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t REP_DELAY ; 
 size_t REP_PERIOD ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,struct dvb_usb_device*) ; 
 int /*<<< orphan*/  legacy_dvb_usb_getkeycode ; 
 int /*<<< orphan*/  legacy_dvb_usb_read_remote_control ; 
 int /*<<< orphan*/  legacy_dvb_usb_setkeycode ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dvb_usb_device *d)
{
	int i, err, rc_interval;
	struct input_dev *input_dev;

	input_dev = FUNC4();
	if (!input_dev)
		return -ENOMEM;

	input_dev->evbit[0] = FUNC0(EV_KEY);
	input_dev->name = "IR-receiver inside an USB DVB receiver";
	input_dev->phys = d->rc_phys;
	FUNC11(d->udev, &input_dev->id);
	input_dev->dev.parent = &d->udev->dev;
	d->input_dev = input_dev;
	d->rc_dev = NULL;

	input_dev->getkeycode = legacy_dvb_usb_getkeycode;
	input_dev->setkeycode = legacy_dvb_usb_setkeycode;

	/* set the bits for the keys */
	FUNC2("key map size: %d\n", d->props.rc.legacy.rc_map_size);
	for (i = 0; i < d->props.rc.legacy.rc_map_size; i++) {
		FUNC2("setting bit for event %d item %d\n",
			d->props.rc.legacy.rc_map_table[i].keycode, i);
		FUNC10(d->props.rc.legacy.rc_map_table[i].keycode, input_dev->keybit);
	}

	/* setting these two values to non-zero, we have to manage key repeats */
	input_dev->rep[REP_PERIOD] = d->props.rc.legacy.rc_interval;
	input_dev->rep[REP_DELAY]  = d->props.rc.legacy.rc_interval + 150;

	FUNC7(input_dev, d);

	err = FUNC6(input_dev);
	if (err)
		FUNC5(input_dev);

	rc_interval = d->props.rc.legacy.rc_interval;

	FUNC1(&d->rc_query_work, legacy_dvb_usb_read_remote_control);

	FUNC3("schedule remote query interval to %d msecs.", rc_interval);
	FUNC9(&d->rc_query_work,
			      FUNC8(rc_interval));

	d->state |= DVB_USB_STATE_REMOTE;

	return err;
}