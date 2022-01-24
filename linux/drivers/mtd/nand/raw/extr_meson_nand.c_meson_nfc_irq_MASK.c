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
struct meson_nfc {int /*<<< orphan*/  completion; scalar_t__ reg_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int NFC_RB_IRQ_EN ; 
 scalar_t__ NFC_REG_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *id)
{
	struct meson_nfc *nfc = id;
	u32 cfg;

	cfg = FUNC1(nfc->reg_base + NFC_REG_CFG);
	if (!(cfg & NFC_RB_IRQ_EN))
		return IRQ_NONE;

	cfg &= ~(NFC_RB_IRQ_EN);
	FUNC2(cfg, nfc->reg_base + NFC_REG_CFG);

	FUNC0(&nfc->completion);
	return IRQ_HANDLED;
}