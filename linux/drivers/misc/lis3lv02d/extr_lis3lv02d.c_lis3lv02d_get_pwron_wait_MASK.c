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
struct lis3lv02d {int pwron_delay; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int,char*) ; 
 int FUNC1 (struct lis3lv02d*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct lis3lv02d *lis3)
{
	int div = FUNC1(lis3);

	if (FUNC0(div == 0, "device returned spurious data"))
		return -ENXIO;

	/* LIS3 power on delay is quite long */
	FUNC2(lis3->pwron_delay / div);
	return 0;
}