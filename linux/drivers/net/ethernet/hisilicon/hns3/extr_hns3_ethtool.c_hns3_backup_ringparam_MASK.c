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
struct hns3_nic_priv {TYPE_1__* ring_data; struct hnae3_handle* ae_handle; } ;
struct hns3_enet_ring {int /*<<< orphan*/ * skb; } ;
struct TYPE_4__ {int num_tqps; } ;
struct hnae3_handle {TYPE_2__ kinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hns3_enet_ring* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns3_enet_ring*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct hns3_enet_ring *FUNC2(struct hns3_nic_priv *priv)
{
	struct hnae3_handle *handle = priv->ae_handle;
	struct hns3_enet_ring *tmp_rings;
	int i;

	tmp_rings = FUNC0(handle->kinfo.num_tqps * 2,
			    sizeof(struct hns3_enet_ring), GFP_KERNEL);
	if (!tmp_rings)
		return NULL;

	for (i = 0; i < handle->kinfo.num_tqps * 2; i++) {
		FUNC1(&tmp_rings[i], priv->ring_data[i].ring,
		       sizeof(struct hns3_enet_ring));
		tmp_rings[i].skb = NULL;
	}

	return tmp_rings;
}