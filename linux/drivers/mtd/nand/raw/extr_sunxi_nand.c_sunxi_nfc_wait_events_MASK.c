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
typedef  int u32 ;
struct sunxi_nfc {int /*<<< orphan*/  dev; scalar_t__ regs; int /*<<< orphan*/  complete; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 unsigned int NFC_DEFAULT_TIMEOUT_MS ; 
 int NFC_INT_MASK ; 
 scalar_t__ NFC_REG_INT ; 
 scalar_t__ NFC_REG_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (scalar_t__,int,int,int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sunxi_nfc *nfc, u32 events,
				 bool use_polling, unsigned int timeout_ms)
{
	int ret;

	if (events & ~NFC_INT_MASK)
		return -EINVAL;

	if (!timeout_ms)
		timeout_ms = NFC_DEFAULT_TIMEOUT_MS;

	if (!use_polling) {
		FUNC1(&nfc->complete);

		FUNC5(events, nfc->regs + NFC_REG_INT);

		ret = FUNC4(&nfc->complete,
						FUNC2(timeout_ms));
		if (!ret)
			ret = -ETIMEDOUT;
		else
			ret = 0;

		FUNC5(0, nfc->regs + NFC_REG_INT);
	} else {
		u32 status;

		ret = FUNC3(nfc->regs + NFC_REG_ST, status,
					 (status & events) == events, 1,
					 timeout_ms * 1000);
	}

	FUNC5(events & NFC_INT_MASK, nfc->regs + NFC_REG_ST);

	if (ret)
		FUNC0(nfc->dev, "wait interrupt timedout\n");

	return ret;
}