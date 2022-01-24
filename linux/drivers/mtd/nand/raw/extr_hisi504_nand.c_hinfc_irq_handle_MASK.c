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
struct hinfc_host {unsigned int irq_status; int /*<<< orphan*/  cmd_complete; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  HINFC504_INTCLR ; 
 int /*<<< orphan*/  HINFC504_INTCLR_CE ; 
 int /*<<< orphan*/  HINFC504_INTCLR_DMA ; 
 int /*<<< orphan*/  HINFC504_INTCLR_UE ; 
 int /*<<< orphan*/  HINFC504_INTS ; 
 unsigned int HINFC504_INTS_CE ; 
 unsigned int HINFC504_INTS_DMA ; 
 unsigned int HINFC504_INTS_UE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct hinfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hinfc_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *devid)
{
	struct hinfc_host *host = devid;
	unsigned int flag;

	flag = FUNC1(host, HINFC504_INTS);
	/* store interrupts state */
	host->irq_status |= flag;

	if (flag & HINFC504_INTS_DMA) {
		FUNC2(host, HINFC504_INTCLR_DMA, HINFC504_INTCLR);
		FUNC0(&host->cmd_complete);
	} else if (flag & HINFC504_INTS_CE) {
		FUNC2(host, HINFC504_INTCLR_CE, HINFC504_INTCLR);
	} else if (flag & HINFC504_INTS_UE) {
		FUNC2(host, HINFC504_INTCLR_UE, HINFC504_INTCLR);
	}

	return IRQ_HANDLED;
}