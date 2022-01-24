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
struct cosa_data {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int SR_TX_RDY ; 
 int FUNC0 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cosa_data *cosa, int data)
{
	int retries = 1000;
	while (--retries) {
		/* read data and return them */
		if (FUNC0(cosa) & SR_TX_RDY) {
			FUNC1(cosa, data);
#if 0
			pr_info("Putdata: %d retries\n", 999-retries);
#endif
			return 0;
		}
#if 0
		/* sleep if not ready to read */
		schedule_timeout_interruptible(1);
#endif
	}
	FUNC2("cosa%d: timeout in put_wait_data (status 0x%x)\n",
		cosa->num, FUNC0(cosa));
	return -1;
}