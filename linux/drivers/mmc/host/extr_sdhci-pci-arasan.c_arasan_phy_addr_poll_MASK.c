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
 int /*<<< orphan*/  PHY_ADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sdhci_host *host, u32 offset, u32 mask)
{
	ktime_t timeout = FUNC0(FUNC2(), 100);
	bool failed;
	u8 val = 0;

	while (1) {
		failed = FUNC1(FUNC2(), timeout);
		val = FUNC3(host, PHY_ADDR_REG);
		if (!(val & mask))
			return 0;
		if (failed)
			return -EBUSY;
	}
}