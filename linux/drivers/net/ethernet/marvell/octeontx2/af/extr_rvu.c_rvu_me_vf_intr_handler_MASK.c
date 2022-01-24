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
typedef  scalar_t__ u64 ;
struct rvu {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RVU_AF_PFME_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rvu*,int,scalar_t__) ; 
 scalar_t__ FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rvu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *rvu_irq)
{
	struct rvu *rvu = (struct rvu *)rvu_irq;
	int vfset;
	u64 intr;

	intr = FUNC2(rvu, BLKADDR_RVUM, RVU_AF_PFME_INT);

	for (vfset = 0; vfset <= 1; vfset++) {
		intr = FUNC3(rvu, FUNC0(vfset));
		if (intr)
			FUNC1(rvu, vfset, intr);
	}

	return IRQ_HANDLED;
}