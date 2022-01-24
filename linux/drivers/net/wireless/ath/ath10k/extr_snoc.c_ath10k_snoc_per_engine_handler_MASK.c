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
struct ath10k_snoc {int /*<<< orphan*/  pipe_info; } ;
struct ath10k {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 struct ath10k_snoc* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *arg)
{
	struct ath10k *ar = arg;
	struct ath10k_snoc *ar_snoc = FUNC3(ar);
	int ce_id = FUNC1(ar, irq);

	if (ce_id < 0 || ce_id >= FUNC0(ar_snoc->pipe_info)) {
		FUNC4(ar, "unexpected/invalid irq %d ce_id %d\n", irq,
			    ce_id);
		return IRQ_HANDLED;
	}

	FUNC2(ar);
	FUNC5(&ar->napi);

	return IRQ_HANDLED;
}