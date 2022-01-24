#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct TYPE_4__ {int mem_blocks; int /*<<< orphan*/  mem_block_size; } ;
struct ar9170 {int /*<<< orphan*/  mem_lock; int /*<<< orphan*/  mem_bitmap; int /*<<< orphan*/  mem_free_blocks; TYPE_2__ fw; } ;
struct TYPE_3__ {int cookie; } ;
struct _carl9170_tx_superframe {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ar9170 *ar, struct sk_buff *skb)
{
	struct _carl9170_tx_superframe *super = (void *) skb->data;
	int cookie;

	/* make a local copy of the cookie */
	cookie = super->s.cookie;
	/* invalidate cookie */
	super->s.cookie = 0;

	/*
	 * Do a out-of-bounds check on the cookie:
	 *
	 *  * cookie "0" is reserved and won't be assigned to any
	 *    out-going frame. Internally however, it is used to
	 *    mark no longer/un-accounted frames and serves as a
	 *    cheap way of preventing frames from being freed
	 *    twice by _accident_. NB: There is a tiny race...
	 *
	 *  * obviously, cookie number is limited by the amount
	 *    of available memory blocks, so the number can
	 *    never execeed the mem_blocks count.
	 */
	if (FUNC1(cookie == 0) ||
	    FUNC1(cookie > ar->fw.mem_blocks))
		return;

	FUNC2(FUNC0(skb->len, ar->fw.mem_block_size),
		   &ar->mem_free_blocks);

	FUNC4(&ar->mem_lock);
	FUNC3(ar->mem_bitmap, cookie - 1, 0);
	FUNC5(&ar->mem_lock);
}