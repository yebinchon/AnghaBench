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
struct i40e_pf {int num_alloc_vsi; scalar_t__* vsi; int /*<<< orphan*/  irq_pile; int /*<<< orphan*/  iwarp_base_vector; } ;

/* Variables and functions */
 scalar_t__ I40E_IWARP_IRQ_PILE_ID ; 
 scalar_t__ I40E_PILE_VALID_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_pf*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct i40e_pf *pf)
{
	int i;

	FUNC0(pf);

	FUNC1(pf->irq_pile, pf->iwarp_base_vector,
		      I40E_IWARP_IRQ_PILE_ID);

	FUNC1(pf->irq_pile, 0, I40E_PILE_VALID_BIT-1);
	for (i = 0; i < pf->num_alloc_vsi; i++)
		if (pf->vsi[i])
			FUNC3(pf->vsi[i]);
	FUNC2(pf);
}