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
typedef  int u16 ;
struct mtk_nfc {int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  NFI_INTR_EN ; 
 int /*<<< orphan*/  NFI_INTR_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_nfc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *id)
{
	struct mtk_nfc *nfc = id;
	u16 sta, ien;

	sta = FUNC1(nfc, NFI_INTR_STA);
	ien = FUNC1(nfc, NFI_INTR_EN);

	if (!(sta & ien))
		return IRQ_NONE;

	FUNC2(nfc, ~sta & ien, NFI_INTR_EN);
	FUNC0(&nfc->done);

	return IRQ_HANDLED;
}