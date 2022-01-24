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
typedef  int /*<<< orphan*/  u16 ;
struct tun_struct {int /*<<< orphan*/  flow_count; } ;
struct tun_flow_entry {int /*<<< orphan*/  hash_link; struct tun_struct* tun; int /*<<< orphan*/  queue_index; scalar_t__ rps_rxhash; int /*<<< orphan*/  rxhash; int /*<<< orphan*/  updated; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct tun_flow_entry* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tun_struct*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tun_flow_entry *FUNC3(struct tun_struct *tun,
					      struct hlist_head *head,
					      u32 rxhash, u16 queue_index)
{
	struct tun_flow_entry *e = FUNC1(sizeof(*e), GFP_ATOMIC);

	if (e) {
		FUNC2(KERN_INFO, tun, "create flow: hash %u index %u\n",
			  rxhash, queue_index);
		e->updated = jiffies;
		e->rxhash = rxhash;
		e->rps_rxhash = 0;
		e->queue_index = queue_index;
		e->tun = tun;
		FUNC0(&e->hash_link, head);
		++tun->flow_count;
	}
	return e;
}