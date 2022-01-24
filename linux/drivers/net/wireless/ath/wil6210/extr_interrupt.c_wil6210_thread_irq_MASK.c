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
struct wil6210_priv {int suspend_resp_comp; int /*<<< orphan*/  wq; scalar_t__ suspend_resp_rcvd; scalar_t__ isr_misc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *cookie)
{
	struct wil6210_priv *wil = cookie;

	FUNC3(wil, "Thread IRQ\n");
	/* Discover real IRQ cause */
	if (wil->isr_misc)
		FUNC1(irq, cookie);

	FUNC2(wil);

	if (wil->suspend_resp_rcvd) {
		FUNC3(wil, "set suspend_resp_comp to true\n");
		wil->suspend_resp_comp = true;
		FUNC0(&wil->wq);
	}

	return IRQ_HANDLED;
}