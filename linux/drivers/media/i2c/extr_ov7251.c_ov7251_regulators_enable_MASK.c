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
struct ov7251 {int /*<<< orphan*/  io_regulator; int /*<<< orphan*/  analog_regulator; int /*<<< orphan*/  dev; int /*<<< orphan*/  core_regulator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ov7251 *ov7251)
{
	int ret;

	/* OV7251 power up sequence requires core regulator
	 * to be enabled not earlier than io regulator
	 */

	ret = FUNC2(ov7251->io_regulator);
	if (ret < 0) {
		FUNC0(ov7251->dev, "set io voltage failed\n");
		return ret;
	}

	ret = FUNC2(ov7251->analog_regulator);
	if (ret) {
		FUNC0(ov7251->dev, "set analog voltage failed\n");
		goto err_disable_io;
	}

	ret = FUNC2(ov7251->core_regulator);
	if (ret) {
		FUNC0(ov7251->dev, "set core voltage failed\n");
		goto err_disable_analog;
	}

	return 0;

err_disable_analog:
	FUNC1(ov7251->analog_regulator);

err_disable_io:
	FUNC1(ov7251->io_regulator);

	return ret;
}