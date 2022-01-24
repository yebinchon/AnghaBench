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
typedef  int u8 ;
typedef  int u16 ;
struct ab8500 {int (* read ) (struct ab8500*,int) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ab8500*,int) ; 

__attribute__((used)) static int FUNC5(struct ab8500 *ab8500, u8 bank,
	u8 reg, u8 *value)
{
	int ret;
	u16 addr = ((u16)bank) << 8 | reg;

	FUNC2(&ab8500->lock);

	ret = ab8500->read(ab8500, addr);
	if (ret < 0)
		FUNC0(ab8500->dev, "failed to read reg %#x: %d\n",
			addr, ret);
	else
		*value = ret;

	FUNC3(&ab8500->lock);
	FUNC1(ab8500->dev, "rd: addr %#x => data %#x\n", addr, ret);

	return (ret < 0) ? ret : 0;
}