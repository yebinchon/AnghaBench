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
struct vdoa_data {int /*<<< orphan*/  dev; scalar_t__ regs; struct vdoa_ctx* curr_ctx; } ;
struct vdoa_ctx {int /*<<< orphan*/  completion; int /*<<< orphan*/  completed_job; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ VDOAIE ; 
 scalar_t__ VDOAIST ; 
 int VDOAIST_EOT ; 
 int VDOAIST_TERR ; 
 scalar_t__ VDOASR ; 
 int VDOASR_ERRW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct vdoa_data *vdoa = data;
	struct vdoa_ctx *curr_ctx;
	u32 val;

	/* Disable interrupts */
	FUNC4(0, vdoa->regs + VDOAIE);

	curr_ctx = vdoa->curr_ctx;
	if (!curr_ctx) {
		FUNC2(vdoa->dev,
			"Instance released before the end of transaction\n");
		return IRQ_HANDLED;
	}

	val = FUNC3(vdoa->regs + VDOAIST);
	FUNC4(val, vdoa->regs + VDOAIST);
	if (val & VDOAIST_TERR) {
		val = FUNC3(vdoa->regs + VDOASR) & VDOASR_ERRW;
		FUNC1(vdoa->dev, "AXI %s error\n", val ? "write" : "read");
	} else if (!(val & VDOAIST_EOT)) {
		FUNC2(vdoa->dev, "Spurious interrupt\n");
	}
	curr_ctx->completed_job++;
	FUNC0(&curr_ctx->completion);

	return IRQ_HANDLED;
}