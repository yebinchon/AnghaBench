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
struct mvpp2 {int dummy; } ;
struct mbus_dram_window {int base; int mbus_attr; int size; } ;
struct mbus_dram_target_info {int num_cs; int mbus_dram_target_id; struct mbus_dram_window* cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_BASE_ADDR_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const struct mbus_dram_target_info *dram,
				    struct mvpp2 *priv)
{
	u32 win_enable;
	int i;

	for (i = 0; i < 6; i++) {
		FUNC3(priv, FUNC0(i), 0);
		FUNC3(priv, FUNC2(i), 0);

		if (i < 4)
			FUNC3(priv, FUNC1(i), 0);
	}

	win_enable = 0;

	for (i = 0; i < dram->num_cs; i++) {
		const struct mbus_dram_window *cs = dram->cs + i;

		FUNC3(priv, FUNC0(i),
			    (cs->base & 0xffff0000) | (cs->mbus_attr << 8) |
			    dram->mbus_dram_target_id);

		FUNC3(priv, FUNC2(i),
			    (cs->size - 1) & 0xffff0000);

		win_enable |= (1 << i);
	}

	FUNC3(priv, MVPP2_BASE_ADDR_ENABLE, win_enable);
}