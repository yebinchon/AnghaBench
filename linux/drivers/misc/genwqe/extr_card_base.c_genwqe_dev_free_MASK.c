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
struct genwqe_dev {size_t card_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** genwqe_devices ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*) ; 

__attribute__((used)) static void FUNC1(struct genwqe_dev *cd)
{
	if (!cd)
		return;

	genwqe_devices[cd->card_idx] = NULL;
	FUNC0(cd);
}