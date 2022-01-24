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
struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
struct hns_nic_ring_data {TYPE_1__ napi; struct hnae_ring* ring; } ;
struct TYPE_4__ {int /*<<< orphan*/  sw_err_cnt; int /*<<< orphan*/  reuse_pg_cnt; } ;
struct hnae_ring {size_t next_to_use; scalar_t__ io_base; TYPE_2__ stats; struct hnae_desc_cb* desc_cb; } ;
struct hnae_desc_cb {scalar_t__ reuse_flag; } ;

/* Variables and functions */
 scalar_t__ RCB_REG_HEAD ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*,size_t,struct hnae_desc_cb*) ; 
 int FUNC1 (struct hnae_ring*,struct hnae_desc_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 int /*<<< orphan*/  next_to_use ; 
 int /*<<< orphan*/  FUNC4 (struct hnae_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct hns_nic_ring_data *ring_data, int cleand_count)
{
	int i, ret;
	struct hnae_desc_cb res_cbs;
	struct hnae_desc_cb *desc_cb;
	struct hnae_ring *ring = ring_data->ring;
	struct net_device *ndev = ring_data->napi.dev;

	for (i = 0; i < cleand_count; i++) {
		desc_cb = &ring->desc_cb[ring->next_to_use];
		if (desc_cb->reuse_flag) {
			ring->stats.reuse_pg_cnt++;
			FUNC2(ring, ring->next_to_use);
		} else {
			ret = FUNC1(ring, &res_cbs);
			if (ret) {
				ring->stats.sw_err_cnt++;
				FUNC3(ndev, "hnae reserve buffer map failed.\n");
				break;
			}
			FUNC0(ring, ring->next_to_use, &res_cbs);
		}

		FUNC4(ring, next_to_use);
	}

	FUNC5(); /* make all data has been write before submit */
	FUNC6(i, ring->io_base + RCB_REG_HEAD);
}