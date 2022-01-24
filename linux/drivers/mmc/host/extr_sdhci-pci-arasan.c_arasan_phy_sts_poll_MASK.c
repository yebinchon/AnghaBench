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
typedef  int u8 ;
typedef  int u32 ;
struct sdhci_host {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct sdhci_host*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct sdhci_host *host, u32 offset, u32 mask)
{
	int ret;
	ktime_t timeout = FUNC1(FUNC3(), 100);
	bool failed;
	u8 val = 0;

	while (1) {
		failed = FUNC2(FUNC3(), timeout);
		ret = FUNC0(host, offset, &val);
		if (ret)
			return -EBUSY;
		else if (val & mask)
			return 0;
		if (failed)
			return -EBUSY;
	}
}