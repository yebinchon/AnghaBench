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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	FUNC4(dev, 1);
	FUNC2(dev, 50);
	FUNC3(dev);
	FUNC0(dev);
	/* Stay active until mmc core scans for a card */
	FUNC1(dev);
}