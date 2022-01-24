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
struct sk_buff {int dummy; } ;
struct hns_nic_ring_data {struct hnae_ring* ring; } ;
struct hnae_ring {scalar_t__ io_base; } ;

/* Variables and functions */
 int RCB_NOF_ALLOC_RX_BUFF_ONCE ; 
 scalar_t__ RCB_REG_FBDNUM ; 
 int FUNC0 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_nic_ring_data*,int) ; 
 int FUNC2 (struct hns_nic_ring_data*,struct sk_buff**,int*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void FUNC5 (struct hns_nic_ring_data*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct hns_nic_ring_data *ring_data,
			       int budget, void *v)
{
	struct hnae_ring *ring = ring_data->ring;
	struct sk_buff *skb;
	int num, bnum;
#define RCB_NOF_ALLOC_RX_BUFF_ONCE 16
	int recv_pkts, recv_bds, clean_count, err;
	int unused_count = FUNC0(ring);

	num = FUNC3(ring->io_base + RCB_REG_FBDNUM);
	FUNC4(); /* make sure num taken effect before the other data is touched */

	recv_pkts = 0, recv_bds = 0, clean_count = 0;
	num -= unused_count;

	while (recv_pkts < budget && recv_bds < num) {
		/* reuse or realloc buffers */
		if (clean_count + unused_count >= RCB_NOF_ALLOC_RX_BUFF_ONCE) {
			FUNC1(ring_data,
						 clean_count + unused_count);
			clean_count = 0;
			unused_count = FUNC0(ring);
		}

		/* poll one pkt */
		err = FUNC2(ring_data, &skb, &bnum);
		if (FUNC6(!skb)) /* this fault cannot be repaired */
			goto out;

		recv_bds += bnum;
		clean_count += bnum;
		if (FUNC6(err)) {  /* do jump the err */
			recv_pkts++;
			continue;
		}

		/* do update ip stack process*/
		((void (*)(struct hns_nic_ring_data *, struct sk_buff *))v)(
							ring_data, skb);
		recv_pkts++;
	}

out:
	/* make all data has been write before submit */
	if (clean_count + unused_count > 0)
		FUNC1(ring_data,
					 clean_count + unused_count);

	return recv_pkts;
}