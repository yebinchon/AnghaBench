#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int discard_granularity; } ;
struct request_queue {TYPE_1__ limits; } ;
struct mmc_card {int pref_erase; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  QUEUE_FLAG_SECERASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,unsigned int) ; 
 unsigned int FUNC2 (struct mmc_card*) ; 
 scalar_t__ FUNC3 (struct mmc_card*) ; 

__attribute__((used)) static void FUNC4(struct request_queue *q,
				    struct mmc_card *card)
{
	unsigned max_discard;

	max_discard = FUNC2(card);
	if (!max_discard)
		return;

	FUNC0(QUEUE_FLAG_DISCARD, q);
	FUNC1(q, max_discard);
	q->limits.discard_granularity = card->pref_erase << 9;
	/* granularity must not be greater than max. discard */
	if (card->pref_erase > max_discard)
		q->limits.discard_granularity = 0;
	if (FUNC3(card))
		FUNC0(QUEUE_FLAG_SECERASE, q);
}