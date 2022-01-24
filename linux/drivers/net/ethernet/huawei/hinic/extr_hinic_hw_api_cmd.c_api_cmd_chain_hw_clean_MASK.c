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
struct hinic_hwif {int dummy; } ;
struct hinic_api_cmd_chain {int /*<<< orphan*/  chain_type; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  AEQE_EN ; 
 int /*<<< orphan*/  CELL_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESTART_WB_STAT ; 
 int /*<<< orphan*/  XOR_CHK_EN ; 
 int /*<<< orphan*/  XOR_ERR ; 
 int FUNC2 (struct hinic_hwif*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int,int) ; 

__attribute__((used)) static void FUNC4(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	u32 addr, ctrl;

	addr = FUNC1(chain->chain_type);

	ctrl = FUNC2(hwif, addr);
	ctrl = FUNC0(ctrl, RESTART_WB_STAT) &
	       FUNC0(ctrl, XOR_ERR)         &
	       FUNC0(ctrl, AEQE_EN)         &
	       FUNC0(ctrl, XOR_CHK_EN)      &
	       FUNC0(ctrl, CELL_SIZE);

	FUNC3(hwif, addr, ctrl);
}