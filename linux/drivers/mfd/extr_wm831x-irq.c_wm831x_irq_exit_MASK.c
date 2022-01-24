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
struct wm831x {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct wm831x*) ; 

void FUNC1(struct wm831x *wm831x)
{
	if (wm831x->irq)
		FUNC0(wm831x->irq, wm831x);
}