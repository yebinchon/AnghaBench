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
typedef  size_t u32 ;
struct sk_buff {char* data; } ;
struct hv_page_buffer {int dummy; } ;
struct hv_netvsc_packet {size_t rmsg_size; size_t rmsg_pgcnt; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct hv_page_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static u32 FUNC8(void *hdr, u32 len, struct sk_buff *skb,
			   struct hv_netvsc_packet *packet,
			   struct hv_page_buffer *pb)
{
	u32 slots_used = 0;
	char *data = skb->data;
	int frags = FUNC6(skb)->nr_frags;
	int i;

	/* The packet is laid out thus:
	 * 1. hdr: RNDIS header and PPI
	 * 2. skb linear data
	 * 3. skb fragment data
	 */
	slots_used += FUNC0(FUNC7(hdr),
				  FUNC1(hdr),
				  len, &pb[slots_used]);

	packet->rmsg_size = len;
	packet->rmsg_pgcnt = slots_used;

	slots_used += FUNC0(FUNC7(data),
				FUNC1(data),
				FUNC5(skb), &pb[slots_used]);

	for (i = 0; i < frags; i++) {
		skb_frag_t *frag = FUNC6(skb)->frags + i;

		slots_used += FUNC0(FUNC3(frag),
					FUNC2(frag),
					FUNC4(frag), &pb[slots_used]);
	}
	return slots_used;
}