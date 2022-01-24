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
struct hinic_api_cmd_chain {int chain_type; int /*<<< orphan*/  prod_idx; struct hinic_hwif* hwif; } ;
typedef  enum hinic_api_cmd_chain_type { ____Placeholder_hinic_api_cmd_chain_type } hinic_api_cmd_chain_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  IDX ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hinic_api_cmd_chain *chain)
{
	enum hinic_api_cmd_chain_type chain_type = chain->chain_type;
	struct hinic_hwif *hwif = chain->hwif;
	u32 addr, prod_idx;

	addr = FUNC2(chain_type);
	prod_idx = FUNC3(hwif, addr);

	prod_idx = FUNC0(prod_idx, IDX);

	prod_idx |= FUNC1(chain->prod_idx, IDX);

	FUNC4(hwif, addr, prod_idx);
}