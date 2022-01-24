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
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {int key_len; int mask_len; scalar_t__ flags; } ;
struct nfp_fl_payload {int in_hw; struct nfp_fl_payload* unmasked_data; struct nfp_fl_payload* mask_data; TYPE_2__ pre_tun_rule; int /*<<< orphan*/  linked_flows; TYPE_1__ meta; scalar_t__ nfp_tun_ipv4_addr; void* action_data; } ;
struct nfp_fl_key_ls {int key_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int NFP_FL_MAX_A_SIZ ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_fl_payload*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct nfp_fl_payload *
FUNC3(struct nfp_fl_key_ls *key_layer)
{
	struct nfp_fl_payload *flow_pay;

	flow_pay = FUNC2(sizeof(*flow_pay), GFP_KERNEL);
	if (!flow_pay)
		return NULL;

	flow_pay->meta.key_len = key_layer->key_size;
	flow_pay->unmasked_data = FUNC2(key_layer->key_size, GFP_KERNEL);
	if (!flow_pay->unmasked_data)
		goto err_free_flow;

	flow_pay->meta.mask_len = key_layer->key_size;
	flow_pay->mask_data = FUNC2(key_layer->key_size, GFP_KERNEL);
	if (!flow_pay->mask_data)
		goto err_free_unmasked;

	flow_pay->action_data = FUNC2(NFP_FL_MAX_A_SIZ, GFP_KERNEL);
	if (!flow_pay->action_data)
		goto err_free_mask;

	flow_pay->nfp_tun_ipv4_addr = 0;
	flow_pay->meta.flags = 0;
	FUNC0(&flow_pay->linked_flows);
	flow_pay->in_hw = false;
	flow_pay->pre_tun_rule.dev = NULL;

	return flow_pay;

err_free_mask:
	FUNC1(flow_pay->mask_data);
err_free_unmasked:
	FUNC1(flow_pay->unmasked_data);
err_free_flow:
	FUNC1(flow_pay);
	return NULL;
}