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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO1 ; 
 int /*<<< orphan*/  GPIO_OUT ; 
 int XC5000_TUNER_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *priv, int component,
					 int command, int arg)
{
	struct dvb_usb_adapter *adap = priv;

	if (command == XC5000_TUNER_RESET) {
		/* Reset the tuner */
		FUNC0(adap->dev, GPIO1, GPIO_OUT, 0);
		FUNC2(10);
		FUNC0(adap->dev, GPIO1, GPIO_OUT, 1);
		FUNC2(10);
	} else {
		FUNC1("xc5000: unknown tuner callback command: %d\n", command);
		return -EINVAL;
	}

	return 0;
}