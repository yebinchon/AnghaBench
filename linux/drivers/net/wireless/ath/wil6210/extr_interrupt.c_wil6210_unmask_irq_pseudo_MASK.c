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
struct wil6210_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGF_DMA_PSEUDO_CAUSE_MASK_SW ; 
 int /*<<< orphan*/  WIL6210_IRQ_PSEUDO_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  wil_status_irqen ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wil6210_priv *wil)
{
	FUNC1(wil, "unmask_irq_pseudo\n");

	FUNC0(wil_status_irqen, wil->status);

	FUNC2(wil, RGF_DMA_PSEUDO_CAUSE_MASK_SW, WIL6210_IRQ_PSEUDO_MASK);
}