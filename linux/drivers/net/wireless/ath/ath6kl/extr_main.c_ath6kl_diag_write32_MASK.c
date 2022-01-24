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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct ath6kl *ar, u32 address, __le32 value)
{
	int ret;

	ret = FUNC1(ar, address, value);

	if (ret) {
		FUNC0("failed to write 0x%x during diagnose window to 0x%x\n",
			   address, value);
		return ret;
	}

	return 0;
}