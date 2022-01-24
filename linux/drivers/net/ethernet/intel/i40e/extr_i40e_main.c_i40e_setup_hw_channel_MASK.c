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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i40e_vsi {scalar_t__ next_base_queue; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_channel {int initialized; scalar_t__ num_queue_pairs; int /*<<< orphan*/  stat_counter_idx; int /*<<< orphan*/  vsi_number; int /*<<< orphan*/  seid; int /*<<< orphan*/  type; scalar_t__ base_queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i40e_pf*,int /*<<< orphan*/ ,struct i40e_channel*) ; 
 int FUNC3 (struct i40e_pf*,struct i40e_vsi*,struct i40e_channel*) ; 

__attribute__((used)) static inline int FUNC4(struct i40e_pf *pf,
					struct i40e_vsi *vsi,
					struct i40e_channel *ch,
					u16 uplink_seid, u8 type)
{
	int ret;

	ch->initialized = false;
	ch->base_queue = vsi->next_base_queue;
	ch->type = type;

	/* Proceed with creation of channel (VMDq2) VSI */
	ret = FUNC2(pf, uplink_seid, ch);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			 "failed to add_channel using uplink_seid %u\n",
			 uplink_seid);
		return ret;
	}

	/* Mark the successful creation of channel */
	ch->initialized = true;

	/* Reconfigure TX queues using QTX_CTL register */
	ret = FUNC3(pf, vsi, ch);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			 "failed to configure TX rings for channel %u\n",
			 ch->seid);
		return ret;
	}

	/* update 'next_base_queue' */
	vsi->next_base_queue = vsi->next_base_queue + ch->num_queue_pairs;
	FUNC0(&pf->pdev->dev,
		"Added channel: vsi_seid %u, vsi_number %u, stat_counter_idx %u, num_queue_pairs %u, pf->next_base_queue %d\n",
		ch->seid, ch->vsi_number, ch->stat_counter_idx,
		ch->num_queue_pairs,
		vsi->next_base_queue);
	return ret;
}