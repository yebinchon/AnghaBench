#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * class; int /*<<< orphan*/ * type; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct rc_dev {int driver_type; TYPE_4__ dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  keylock; TYPE_1__ rc_map; int /*<<< orphan*/  timer_repeat; int /*<<< orphan*/  timer_keyup; int /*<<< orphan*/  timeout; TYPE_2__* input_dev; } ;
typedef  enum rc_driver_type { ____Placeholder_rc_driver_type } rc_driver_type ;
struct TYPE_6__ {int /*<<< orphan*/  setkeycode; int /*<<< orphan*/  getkeycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IR_DEFAULT_TIMEOUT ; 
 int RC_DRIVER_IR_RAW_TX ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct rc_dev*) ; 
 int /*<<< orphan*/  ir_getkeycode ; 
 int /*<<< orphan*/  ir_setkeycode ; 
 int /*<<< orphan*/  ir_timer_keyup ; 
 int /*<<< orphan*/  ir_timer_repeat ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*) ; 
 struct rc_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rc_class ; 
 int /*<<< orphan*/  rc_dev_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rc_dev *FUNC9(enum rc_driver_type type)
{
	struct rc_dev *dev;

	dev = FUNC5(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	if (type != RC_DRIVER_IR_RAW_TX) {
		dev->input_dev = FUNC2();
		if (!dev->input_dev) {
			FUNC4(dev);
			return NULL;
		}

		dev->input_dev->getkeycode = ir_getkeycode;
		dev->input_dev->setkeycode = ir_setkeycode;
		FUNC3(dev->input_dev, dev);

		dev->timeout = IR_DEFAULT_TIMEOUT;
		FUNC8(&dev->timer_keyup, ir_timer_keyup, 0);
		FUNC8(&dev->timer_repeat, ir_timer_repeat, 0);

		FUNC7(&dev->rc_map.lock);
		FUNC7(&dev->keylock);
	}
	FUNC6(&dev->lock);

	dev->dev.type = &rc_dev_type;
	dev->dev.class = &rc_class;
	FUNC1(&dev->dev);

	dev->driver_type = type;

	FUNC0(THIS_MODULE);
	return dev;
}