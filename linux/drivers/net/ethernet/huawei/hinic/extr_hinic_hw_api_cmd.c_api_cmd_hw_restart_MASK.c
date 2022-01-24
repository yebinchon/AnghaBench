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
struct hinic_api_cmd_chain {int /*<<< orphan*/  chain_type; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  API_CMD_TIMEOUT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESTART ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC9(struct hinic_api_cmd_chain *chain)
{
	struct hinic_hwif *hwif = chain->hwif;
	int err = -ETIMEDOUT;
	unsigned long end;
	u32 reg_addr, val;

	/* Read Modify Write */
	reg_addr = FUNC3(chain->chain_type);
	val = FUNC4(hwif, reg_addr);

	val = FUNC0(val, RESTART);
	val |= FUNC2(1, RESTART);

	FUNC5(hwif, reg_addr, val);

	end = jiffies + FUNC6(API_CMD_TIMEOUT);
	do {
		val = FUNC4(hwif, reg_addr);

		if (!FUNC1(val, RESTART)) {
			err = 0;
			break;
		}

		FUNC7(20);
	} while (FUNC8(jiffies, end));

	return err;
}