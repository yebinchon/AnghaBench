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
 int NFC_DEFAULT_TIMEOUT_MS ; 
 scalar_t__ NFC_REG_CTL ; 
 scalar_t__ NFC_REG_ECC_CTL ; 
 int NFC_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct sunxi_nfc *nfc)
{
	u32 ctl;
	int ret;

	FUNC2(0, nfc->regs + NFC_REG_ECC_CTL);
	FUNC2(NFC_RESET, nfc->regs + NFC_REG_CTL);

	ret = FUNC1(nfc->regs + NFC_REG_CTL, ctl,
				 !(ctl & NFC_RESET), 1,
				 NFC_DEFAULT_TIMEOUT_MS * 1000);
	if (ret)
		FUNC0(nfc->dev, "wait for NAND controller reset timedout\n");

	return ret;
}