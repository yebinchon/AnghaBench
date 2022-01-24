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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath6kl_device {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_FW_ASSERT ; 
 int /*<<< orphan*/  COUNT_DEC_ADDRESS ; 
 int /*<<< orphan*/  HIF_RD_SYNC_BYTE_INC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ath6kl_device *dev)
{
	u32 dummy;
	int ret;

	FUNC3("firmware crashed\n");

	/*
	 * read counter to clear the interrupt, the debug error interrupt is
	 * counter 0.
	 */
	ret = FUNC4(dev->ar, COUNT_DEC_ADDRESS,
				     (u8 *)&dummy, 4, HIF_RD_SYNC_BYTE_INC);
	if (ret)
		FUNC3("Failed to clear debug interrupt: %d\n", ret);

	FUNC0(dev->ar);
	FUNC1(dev->ar);
	FUNC2(dev->ar, ATH6KL_FW_ASSERT);

	return ret;
}