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
struct tun_struct {int numqueues; int /*<<< orphan*/ * flows; } ;
struct tun_flow_entry {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  rps_needed ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct tun_flow_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tun_flow_entry*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tun_struct *tun, struct sk_buff *skb)
{
#ifdef CONFIG_RPS
	if (tun->numqueues == 1 && static_branch_unlikely(&rps_needed)) {
		/* Select queue was not called for the skbuff, so we extract the
		 * RPS hash and save it into the flow_table here.
		 */
		struct tun_flow_entry *e;
		__u32 rxhash;

		rxhash = __skb_get_hash_symmetric(skb);
		e = tun_flow_find(&tun->flows[tun_hashfn(rxhash)], rxhash);
		if (e)
			tun_flow_save_rps_rxhash(e, rxhash);
	}
#endif
}