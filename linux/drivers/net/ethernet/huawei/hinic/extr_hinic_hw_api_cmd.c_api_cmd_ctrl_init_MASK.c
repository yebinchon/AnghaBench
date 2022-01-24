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
typedef  int u16 ;
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int /*<<< orphan*/  cell_size; int /*<<< orphan*/  chain_type; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEQE_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CELL_SIZE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESTART_WB_STAT ; 
 int XOR_CHK_ALL ; 
 int /*<<< orphan*/  XOR_CHK_EN ; 
 int /*<<< orphan*/  XOR_ERR ; 
 int FUNC4 (struct hinic_hwif*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_hwif*,int,int) ; 

__attribute__((used)) static void FUNC6(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	u32 addr, ctrl;
	u16 cell_size;

	/* Read Modify Write */
	addr = FUNC3(chain->chain_type);

	cell_size = FUNC0(chain->cell_size);

	ctrl = FUNC4(hwif, addr);

	ctrl =  FUNC1(ctrl, RESTART_WB_STAT) &
		FUNC1(ctrl, XOR_ERR)         &
		FUNC1(ctrl, AEQE_EN)         &
		FUNC1(ctrl, XOR_CHK_EN)      &
		FUNC1(ctrl, CELL_SIZE);

	ctrl |= FUNC2(1, XOR_ERR)              |
		FUNC2(XOR_CHK_ALL, XOR_CHK_EN) |
		FUNC2(cell_size, CELL_SIZE);

	FUNC5(hwif, addr, ctrl);
}