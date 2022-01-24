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
struct TYPE_4__ {unsigned int vec_idx; int /*<<< orphan*/  affinity_mask; scalar_t__ cpu; } ;
struct aq_vec_s {scalar_t__ rx_rings; int /*<<< orphan*/ ** ring; scalar_t__ tx_rings; TYPE_2__ aq_ring_param; int /*<<< orphan*/  nic; int /*<<< orphan*/  napi; struct aq_nic_s* aq_nic; } ;
struct aq_ring_s {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct TYPE_3__ {scalar_t__ base_cpu_number; } ;
struct aq_nic_cfg_s {unsigned int tcs; TYPE_1__ aq_rss; } ;

/* Variables and functions */
 int /*<<< orphan*/  AQ_CFG_NAPI_WEIGHT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 size_t AQ_VEC_RX_ID ; 
 size_t AQ_VEC_TX_ID ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_nic_s*,unsigned int,struct aq_ring_s*) ; 
 struct aq_ring_s* FUNC3 (int /*<<< orphan*/ *,struct aq_nic_s*,unsigned int,struct aq_nic_cfg_s*) ; 
 struct aq_ring_s* FUNC4 (int /*<<< orphan*/ *,struct aq_nic_s*,unsigned int,struct aq_nic_cfg_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_vec_s*) ; 
 int /*<<< orphan*/  aq_vec_poll ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct aq_vec_s* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct aq_vec_s *FUNC9(struct aq_nic_s *aq_nic, unsigned int idx,
			      struct aq_nic_cfg_s *aq_nic_cfg)
{
	struct aq_vec_s *self = NULL;
	struct aq_ring_s *ring = NULL;
	unsigned int i = 0U;
	int err = 0;

	self = FUNC7(sizeof(*self), GFP_KERNEL);
	if (!self) {
		err = -ENOMEM;
		goto err_exit;
	}

	self->aq_nic = aq_nic;
	self->aq_ring_param.vec_idx = idx;
	self->aq_ring_param.cpu =
		idx + aq_nic_cfg->aq_rss.base_cpu_number;

	FUNC6(self->aq_ring_param.cpu,
			&self->aq_ring_param.affinity_mask);

	self->tx_rings = 0;
	self->rx_rings = 0;

	FUNC8(FUNC1(aq_nic), &self->napi,
		       aq_vec_poll, AQ_CFG_NAPI_WEIGHT);

	for (i = 0; i < aq_nic_cfg->tcs; ++i) {
		unsigned int idx_ring = FUNC0(self->nic,
						self->tx_rings,
						self->aq_ring_param.vec_idx);

		ring = FUNC4(&self->ring[i][AQ_VEC_TX_ID], aq_nic,
					idx_ring, aq_nic_cfg);
		if (!ring) {
			err = -ENOMEM;
			goto err_exit;
		}

		++self->tx_rings;

		FUNC2(aq_nic, idx_ring, ring);

		ring = FUNC3(&self->ring[i][AQ_VEC_RX_ID], aq_nic,
					idx_ring, aq_nic_cfg);
		if (!ring) {
			err = -ENOMEM;
			goto err_exit;
		}

		++self->rx_rings;
	}

err_exit:
	if (err < 0) {
		FUNC5(self);
		self = NULL;
	}
	return self;
}