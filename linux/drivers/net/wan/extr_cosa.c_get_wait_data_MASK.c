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
struct cosa_data {int dummy; } ;

/* Variables and functions */
 int SR_RX_RDY ; 
 short FUNC0 (struct cosa_data*) ; 
 int FUNC1 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct cosa_data *cosa)
{
	int retries = 1000;

	while (--retries) {
		/* read data and return them */
		if (FUNC1(cosa) & SR_RX_RDY) {
			short r;
			r = FUNC0(cosa);
#if 0
			pr_info("get_wait_data returning after %d retries\n",
				999-retries);
#endif
			return r;
		}
		/* sleep if not ready to read */
		FUNC3(1);
	}
	FUNC2("timeout in get_wait_data (status 0x%x)\n",
		FUNC1(cosa));
	return -1;
}