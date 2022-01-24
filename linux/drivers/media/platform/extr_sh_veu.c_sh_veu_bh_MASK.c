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
struct sh_veu_dev {scalar_t__ xaction; int /*<<< orphan*/  m2m_ctx; int /*<<< orphan*/  m2m_dev; scalar_t__ aborting; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MEM2MEM_DEF_TRANSLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sh_veu_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	struct sh_veu_dev *veu = dev_id;

	if (veu->xaction == MEM2MEM_DEF_TRANSLEN || veu->aborting) {
		FUNC1(veu->m2m_dev, veu->m2m_ctx);
		veu->xaction = 0;
	} else {
		FUNC0(veu);
	}

	return IRQ_HANDLED;
}