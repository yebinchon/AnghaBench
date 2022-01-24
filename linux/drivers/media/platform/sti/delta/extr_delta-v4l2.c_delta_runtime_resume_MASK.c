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
struct device {int dummy; } ;
struct delta_dev {scalar_t__ clk_delta; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 struct delta_dev* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct delta_dev *delta = FUNC1(dev);

	if (delta->clk_delta)
		if (FUNC0(delta->clk_delta))
			FUNC2(dev, "failed to prepare/enable delta clk\n");

	return 0;
}