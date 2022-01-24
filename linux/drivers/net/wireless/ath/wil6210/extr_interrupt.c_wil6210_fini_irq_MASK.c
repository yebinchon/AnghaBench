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
struct wil6210_priv {int n_msi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*) ; 

void FUNC3(struct wil6210_priv *wil, int irq)
{
	FUNC1(wil, "fini_irq:\n");

	FUNC2(wil);
	FUNC0(irq, wil);
	if (wil->n_msi == 3) {
		FUNC0(irq + 1, wil);
		FUNC0(irq + 2, wil);
	}
}