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
struct cec_gpio {int v5_is_high; int /*<<< orphan*/  v5_ts; int /*<<< orphan*/  v5_gpio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *priv)
{
	struct cec_gpio *cec = priv;
	bool is_high = FUNC0(cec->v5_gpio);

	if (is_high == cec->v5_is_high)
		return IRQ_HANDLED;
	cec->v5_ts = FUNC1();
	cec->v5_is_high = is_high;
	return IRQ_WAKE_THREAD;
}