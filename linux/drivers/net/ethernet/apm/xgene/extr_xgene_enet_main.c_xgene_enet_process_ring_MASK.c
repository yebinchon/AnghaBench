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
typedef  size_t u16 ;
struct xgene_enet_raw_desc {int /*<<< orphan*/  m0; } ;
struct xgene_enet_pdata {int* txc_level; TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {size_t head; size_t slots; size_t index; struct xgene_enet_raw_desc* raw_desc; struct net_device* ndev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wr_cmd ) (struct xgene_enet_desc_ring*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV ; 
 scalar_t__ FUNC1 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct xgene_enet_raw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct xgene_enet_pdata* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct xgene_enet_desc_ring*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xgene_enet_raw_desc*) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_enet_raw_desc*) ; 
 int FUNC12 (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*,struct xgene_enet_raw_desc*) ; 
 int FUNC13 (struct xgene_enet_desc_ring*,struct xgene_enet_raw_desc*) ; 

__attribute__((used)) static int FUNC14(struct xgene_enet_desc_ring *ring,
				   int budget)
{
	struct net_device *ndev = ring->ndev;
	struct xgene_enet_pdata *pdata = FUNC6(ndev);
	struct xgene_enet_raw_desc *raw_desc, *exp_desc;
	u16 head = ring->head;
	u16 slots = ring->slots - 1;
	int ret, desc_count, count = 0, processed = 0;
	bool is_completion;

	do {
		raw_desc = &ring->raw_desc[head];
		desc_count = 0;
		is_completion = false;
		exp_desc = NULL;
		if (FUNC9(FUNC10(raw_desc)))
			break;

		/* read fpqnum field after dataaddr field */
		FUNC2();
		if (FUNC0(NV, FUNC4(raw_desc->m0))) {
			head = (head + 1) & slots;
			exp_desc = &ring->raw_desc[head];

			if (FUNC9(FUNC10(exp_desc))) {
				head = (head - 1) & slots;
				break;
			}
			FUNC2();
			count++;
			desc_count++;
		}
		if (FUNC3(raw_desc)) {
			ret = FUNC12(ring, raw_desc, exp_desc);
		} else {
			ret = FUNC13(ring, raw_desc);
			is_completion = true;
		}
		FUNC11(raw_desc);
		if (exp_desc)
			FUNC11(exp_desc);

		head = (head + 1) & slots;
		count++;
		desc_count++;
		processed++;
		if (is_completion)
			pdata->txc_level[ring->index] += desc_count;

		if (ret)
			break;
	} while (--budget);

	if (FUNC5(count)) {
		pdata->ring_ops->wr_cmd(ring, -count);
		ring->head = head;

		if (FUNC1(ndev, ring->index))
			FUNC7(ndev, ring->index);
	}

	return processed;
}