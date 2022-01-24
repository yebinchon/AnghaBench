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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct tun_struct {unsigned long ageing_time; scalar_t__ flow_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  flow_gc_timer; struct hlist_head* flows; } ;
struct tun_flow_entry {scalar_t__ updated; int /*<<< orphan*/  rps_rxhash; int /*<<< orphan*/  queue_index; } ;
struct tun_file {scalar_t__ queue_index; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_TAP_FLOWS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (struct tun_flow_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct tun_struct*,struct hlist_head*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct tun_flow_entry* FUNC12 (struct hlist_head*,int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct tun_struct *tun, u32 rxhash,
			    struct tun_file *tfile)
{
	struct hlist_head *head;
	struct tun_flow_entry *e;
	unsigned long delay = tun->ageing_time;
	u16 queue_index = tfile->queue_index;

	head = &tun->flows[FUNC13(rxhash)];

	FUNC4();

	e = FUNC12(head, rxhash);
	if (FUNC2(e)) {
		/* TODO: keep queueing to old queue until it's empty? */
		if (FUNC0(e->queue_index) != queue_index)
			FUNC1(e->queue_index, queue_index);
		if (e->updated != jiffies)
			e->updated = jiffies;
		FUNC7(e->rps_rxhash);
	} else {
		FUNC8(&tun->lock);
		if (!FUNC12(head, rxhash) &&
		    tun->flow_count < MAX_TAP_FLOWS)
			FUNC11(tun, head, rxhash, queue_index);

		if (!FUNC10(&tun->flow_gc_timer))
			FUNC3(&tun->flow_gc_timer,
				  FUNC6(jiffies + delay));
		FUNC9(&tun->lock);
	}

	FUNC5();
}