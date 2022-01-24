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
struct hinic_api_cmd_chain {scalar_t__ cons_idx; scalar_t__ prod_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  API_CMD_TIMEOUT ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_api_cmd_chain*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct hinic_api_cmd_chain *chain)
{
	int err = -ETIMEDOUT;
	unsigned long end;

	end = jiffies + FUNC1(API_CMD_TIMEOUT);
	do {
		FUNC0(chain);

		/* wait for CI to be updated - sign for completion */
		if (chain->cons_idx == chain->prod_idx) {
			err = 0;
			break;
		}

		FUNC2(20);
	} while (FUNC3(jiffies, end));

	return err;
}