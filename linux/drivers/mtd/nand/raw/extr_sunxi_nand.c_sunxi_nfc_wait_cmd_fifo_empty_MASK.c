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
struct sunxi_nfc {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 int NFC_CMD_FIFO_STATUS ; 
 int NFC_DEFAULT_TIMEOUT_MS ; 
 scalar_t__ NFC_REG_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct sunxi_nfc *nfc)
{
	u32 status;
	int ret;

	ret = FUNC1(nfc->regs + NFC_REG_ST, status,
				 !(status & NFC_CMD_FIFO_STATUS), 1,
				 NFC_DEFAULT_TIMEOUT_MS * 1000);
	if (ret)
		FUNC0(nfc->dev, "wait for empty cmd FIFO timedout\n");

	return ret;
}