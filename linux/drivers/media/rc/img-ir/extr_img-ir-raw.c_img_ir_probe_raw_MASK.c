#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rc_dev {char* device_name; int /*<<< orphan*/  map_name; struct img_ir_priv* priv; } ;
struct img_ir_priv_raw {struct rc_dev* rdev; int /*<<< orphan*/  timer; } ;
struct img_ir_priv {int /*<<< orphan*/  dev; struct img_ir_priv_raw raw; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  img_ir_echo_timer ; 
 struct rc_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*) ; 
 int FUNC3 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct img_ir_priv *priv)
{
	struct img_ir_priv_raw *raw = &priv->raw;
	struct rc_dev *rdev;
	int error;

	/* Set up the echo timer */
	FUNC4(&raw->timer, img_ir_echo_timer, 0);

	/* Allocate raw decoder */
	raw->rdev = rdev = FUNC1(RC_DRIVER_IR_RAW);
	if (!rdev) {
		FUNC0(priv->dev, "cannot allocate raw input device\n");
		return -ENOMEM;
	}
	rdev->priv = priv;
	rdev->map_name = RC_MAP_EMPTY;
	rdev->device_name = "IMG Infrared Decoder Raw";

	/* Register raw decoder */
	error = FUNC3(rdev);
	if (error) {
		FUNC0(priv->dev, "failed to register raw IR input device\n");
		FUNC2(rdev);
		raw->rdev = NULL;
		return error;
	}

	return 0;
}