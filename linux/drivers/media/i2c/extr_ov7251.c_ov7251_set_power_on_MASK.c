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
typedef  int u32 ;
struct ov7251 {int xclk_freq; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  dev; int /*<<< orphan*/  xclk; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ov7251*) ; 
 int FUNC5 (struct ov7251*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ov7251 *ov7251)
{
	int ret;
	u32 wait_us;

	ret = FUNC5(ov7251);
	if (ret < 0)
		return ret;

	ret = FUNC1(ov7251->xclk);
	if (ret < 0) {
		FUNC2(ov7251->dev, "clk prepare enable failed\n");
		FUNC4(ov7251);
		return ret;
	}

	FUNC3(ov7251->enable_gpio, 1);

	/* wait at least 65536 external clock cycles */
	wait_us = FUNC0(65536 * 1000,
			       FUNC0(ov7251->xclk_freq, 1000));
	FUNC6(wait_us, wait_us + 1000);

	return 0;
}