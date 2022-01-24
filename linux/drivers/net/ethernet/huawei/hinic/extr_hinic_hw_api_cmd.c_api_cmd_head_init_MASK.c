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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int /*<<< orphan*/  head_cell_paddr; int /*<<< orphan*/  chain_type; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	u32 addr, val;

	addr = FUNC0(chain->chain_type);
	val = FUNC4(chain->head_cell_paddr);
	FUNC2(hwif, addr, val);

	addr = FUNC1(chain->chain_type);
	val = FUNC3(chain->head_cell_paddr);
	FUNC2(hwif, addr, val);
}