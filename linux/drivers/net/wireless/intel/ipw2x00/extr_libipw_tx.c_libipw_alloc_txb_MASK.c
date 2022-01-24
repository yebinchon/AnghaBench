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
typedef  int /*<<< orphan*/  u8 ;
struct libipw_txb {int nr_frags; int frag_size; int /*<<< orphan*/ * fragments; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct libipw_txb*) ; 
 struct libipw_txb* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct libipw_txb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct libipw_txb *FUNC7(int nr_frags, int txb_size,
						 int headroom, gfp_t gfp_mask)
{
	struct libipw_txb *txb;
	int i;
	txb = FUNC3(sizeof(struct libipw_txb) + (sizeof(u8 *) * nr_frags),
		      gfp_mask);
	if (!txb)
		return NULL;

	FUNC4(txb, 0, sizeof(struct libipw_txb));
	txb->nr_frags = nr_frags;
	txb->frag_size = txb_size;

	for (i = 0; i < nr_frags; i++) {
		txb->fragments[i] = FUNC0(txb_size + headroom,
						    gfp_mask);
		if (FUNC6(!txb->fragments[i])) {
			i--;
			break;
		}
		FUNC5(txb->fragments[i], headroom);
	}
	if (FUNC6(i != nr_frags)) {
		while (i >= 0)
			FUNC1(txb->fragments[i--]);
		FUNC2(txb);
		return NULL;
	}
	return txb;
}