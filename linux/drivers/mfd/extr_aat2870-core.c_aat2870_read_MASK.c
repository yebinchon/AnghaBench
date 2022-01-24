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
struct aat2870_data {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int FUNC0 (struct aat2870_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct aat2870_data *aat2870, u8 addr, u8 *val)
{
	int ret;

	FUNC1(&aat2870->io_lock);
	ret = FUNC0(aat2870, addr, val);
	FUNC2(&aat2870->io_lock);

	return ret;
}