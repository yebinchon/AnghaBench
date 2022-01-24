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
struct tegra_mc_reset {int /*<<< orphan*/  control; int /*<<< orphan*/  bit; } ;
struct tegra_mc {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tegra_mc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_mc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tegra_mc *mc,
				  const struct tegra_mc_reset *rst)
{
	unsigned long flags;
	u32 value;

	FUNC3(&mc->lock, flags);

	value = FUNC1(mc, rst->control) | FUNC0(rst->bit);
	FUNC2(mc, value, rst->control);

	FUNC4(&mc->lock, flags);

	return 0;
}