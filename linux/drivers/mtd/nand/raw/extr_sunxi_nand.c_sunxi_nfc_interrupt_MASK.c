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
struct sunxi_nfc {scalar_t__ regs; int /*<<< orphan*/  complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NFC_INT_MASK ; 
 scalar_t__ NFC_REG_INT ; 
 scalar_t__ NFC_REG_ST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct sunxi_nfc *nfc = dev_id;
	u32 st = FUNC1(nfc->regs + NFC_REG_ST);
	u32 ien = FUNC1(nfc->regs + NFC_REG_INT);

	if (!(ien & st))
		return IRQ_NONE;

	if ((ien & st) == ien)
		FUNC0(&nfc->complete);

	FUNC2(st & NFC_INT_MASK, nfc->regs + NFC_REG_ST);
	FUNC2(~st & ien & NFC_INT_MASK, nfc->regs + NFC_REG_INT);

	return IRQ_HANDLED;
}