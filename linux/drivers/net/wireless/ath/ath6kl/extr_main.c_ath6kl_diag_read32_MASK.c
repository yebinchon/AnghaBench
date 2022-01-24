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
struct ath6kl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(struct ath6kl *ar, u32 address, u32 *value)
{
	int ret;

	ret = FUNC0(ar, address, value);
	if (ret) {
		FUNC1("failed to read32 through diagnose window: %d\n",
			    ret);
		return ret;
	}

	return 0;
}