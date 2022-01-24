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
typedef  int /*<<< orphan*/  u8 ;
struct device {int /*<<< orphan*/  parent; } ;
struct ab8500 {int /*<<< orphan*/  transfer_ongoing; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ab8500* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ab8500*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u8 bank,
	u8 reg, u8 *value)
{
	int ret;
	struct ab8500 *ab8500 = FUNC2(dev->parent);

	FUNC1(&ab8500->transfer_ongoing);
	ret = FUNC3(ab8500, bank, reg, value);
	FUNC0(&ab8500->transfer_ongoing);
	return ret;
}