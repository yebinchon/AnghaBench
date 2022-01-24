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
struct ivtv {int /*<<< orphan*/ * enc_mem; int /*<<< orphan*/ * dec_mem; scalar_t__ has_cx23415; int /*<<< orphan*/ * reg_mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ivtv *itv)
{
	if (itv == NULL)
		return;

	/* Release registers memory */
	if (itv->reg_mem != NULL) {
		FUNC0("releasing reg_mem\n");
		FUNC1(itv->reg_mem);
		itv->reg_mem = NULL;
	}
	/* Release io memory */
	if (itv->has_cx23415 && itv->dec_mem != NULL) {
		FUNC0("releasing dec_mem\n");
		FUNC1(itv->dec_mem);
	}
	itv->dec_mem = NULL;

	/* Release io memory */
	if (itv->enc_mem != NULL) {
		FUNC0("releasing enc_mem\n");
		FUNC1(itv->enc_mem);
		itv->enc_mem = NULL;
	}
}