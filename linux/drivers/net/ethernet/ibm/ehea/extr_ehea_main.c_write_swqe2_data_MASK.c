#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ehea_vsgentry {void* vaddr; void* len; void* l_key; } ;
struct TYPE_4__ {int /*<<< orphan*/  sg_list; struct ehea_vsgentry sg_entry; } ;
struct TYPE_5__ {TYPE_1__ immdata_desc; } ;
struct ehea_swqe {scalar_t__ descriptors; TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_6__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct ehea_swqe*,void*) ; 

__attribute__((used)) static inline void FUNC5(struct sk_buff *skb, struct net_device *dev,
				    struct ehea_swqe *swqe, u32 lkey)
{
	struct ehea_vsgentry *sg_list, *sg1entry, *sgentry;
	skb_frag_t *frag;
	int nfrags, sg1entry_contains_frag_data, i;

	nfrags = FUNC3(skb)->nr_frags;
	sg1entry = &swqe->u.immdata_desc.sg_entry;
	sg_list = (struct ehea_vsgentry *)&swqe->u.immdata_desc.sg_list;
	sg1entry_contains_frag_data = 0;

	FUNC4(skb, swqe, lkey);

	/* write descriptors */
	if (nfrags > 0) {
		if (swqe->descriptors == 0) {
			/* sg1entry not yet used */
			frag = &FUNC3(skb)->frags[0];

			/* copy sg1entry data */
			sg1entry->l_key = lkey;
			sg1entry->len = FUNC2(frag);
			sg1entry->vaddr =
				FUNC0(FUNC1(frag));
			swqe->descriptors++;
			sg1entry_contains_frag_data = 1;
		}

		for (i = sg1entry_contains_frag_data; i < nfrags; i++) {

			frag = &FUNC3(skb)->frags[i];
			sgentry = &sg_list[i - sg1entry_contains_frag_data];

			sgentry->l_key = lkey;
			sgentry->len = FUNC2(frag);
			sgentry->vaddr = FUNC0(FUNC1(frag));
			swqe->descriptors++;
		}
	}
}