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
struct as102_dev_t {int /*<<< orphan*/  name; int /*<<< orphan*/  dvb_adap; int /*<<< orphan*/  dvb_dmx; int /*<<< orphan*/  dvb_dmxdev; int /*<<< orphan*/  dvb_fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void FUNC6(struct as102_dev_t *as102_dev)
{
	/* unregister as102 frontend */
	FUNC4(as102_dev->dvb_fe);

	/* detach frontend */
	FUNC2(as102_dev->dvb_fe);

	/* unregister demux device */
	FUNC1(&as102_dev->dvb_dmxdev);
	FUNC0(&as102_dev->dvb_dmx);

	/* unregister dvb adapter */
	FUNC3(&as102_dev->dvb_adap);

	FUNC5("Unregistered device %s", as102_dev->name);
}