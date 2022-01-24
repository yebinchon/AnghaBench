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
typedef  scalar_t__ u32 ;
struct macsec_tx_sa {scalar_t__ next_pn; int active; int /*<<< orphan*/  lock; } ;
struct macsec_secy {int operational; scalar_t__ protect_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct macsec_tx_sa *tx_sa, struct macsec_secy *secy)
{
	u32 pn;

	FUNC1(&tx_sa->lock);
	pn = tx_sa->next_pn;

	tx_sa->next_pn++;
	if (tx_sa->next_pn == 0) {
		FUNC0("PN wrapped, transitioning to !oper\n");
		tx_sa->active = false;
		if (secy->protect_frames)
			secy->operational = false;
	}
	FUNC2(&tx_sa->lock);

	return pn;
}