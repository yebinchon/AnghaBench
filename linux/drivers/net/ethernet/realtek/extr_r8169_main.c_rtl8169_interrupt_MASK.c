#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct rtl8169_private {int irq_mask; scalar_t__ mac_version; int /*<<< orphan*/  napi; TYPE_1__ wk; int /*<<< orphan*/  dev; int /*<<< orphan*/  phydev; int /*<<< orphan*/  irq_enabled; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int LinkChg ; 
 int /*<<< orphan*/  RTL_FLAG_TASK_RESET_PENDING ; 
 scalar_t__ RTL_GIGA_MAC_VER_11 ; 
 int RxFIFOOver ; 
 int SYSErr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*,int) ; 
 int FUNC5 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_instance)
{
	struct rtl8169_private *tp = dev_instance;
	u32 status = FUNC5(tp);

	if (!tp->irq_enabled || (status & 0xffff) == 0xffff ||
	    !(status & tp->irq_mask))
		return IRQ_NONE;

	if (FUNC8(status & SYSErr)) {
		FUNC3(tp->dev);
		goto out;
	}

	if (status & LinkChg)
		FUNC2(tp->phydev);

	if (FUNC8(status & RxFIFOOver &&
	    tp->mac_version == RTL_GIGA_MAC_VER_11)) {
		FUNC1(tp->dev);
		/* XXX - Hack alert. See rtl_task(). */
		FUNC7(RTL_FLAG_TASK_RESET_PENDING, tp->wk.flags);
	}

	FUNC6(tp);
	FUNC0(&tp->napi);
out:
	FUNC4(tp, status);

	return IRQ_HANDLED;
}