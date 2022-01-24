#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5k6a3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  clock; TYPE_1__* supplies; int /*<<< orphan*/  gpio_reset; } ;
struct TYPE_2__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int S5K6A3_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct s5k6a3 *sensor)
{
	int i;

	FUNC1(sensor->gpio_reset, 0);

	for (i = S5K6A3_NUM_SUPPLIES - 1; i >= 0; i--)
		FUNC3(sensor->supplies[i].consumer);

	FUNC0(sensor->clock);
	FUNC2(sensor->dev);
	return 0;
}