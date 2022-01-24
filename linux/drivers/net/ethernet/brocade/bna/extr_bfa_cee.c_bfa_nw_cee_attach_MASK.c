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
struct bfa_ioc {int dummy; } ;
struct bfa_cee {int /*<<< orphan*/  ioc_notify; struct bfa_ioc* ioc; void* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_CEE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bfa_cee_isr ; 
 int /*<<< orphan*/  bfa_cee_notify ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct bfa_cee*) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_ioc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bfa_cee*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_ioc*,int /*<<< orphan*/ *) ; 

void
FUNC4(struct bfa_cee *cee, struct bfa_ioc *ioc,
		void *dev)
{
	FUNC0(!(cee != NULL));
	cee->dev = dev;
	cee->ioc = ioc;

	FUNC2(cee->ioc, BFI_MC_CEE, bfa_cee_isr, cee);
	FUNC1(&cee->ioc_notify, bfa_cee_notify, cee);
	FUNC3(cee->ioc, &cee->ioc_notify);
}