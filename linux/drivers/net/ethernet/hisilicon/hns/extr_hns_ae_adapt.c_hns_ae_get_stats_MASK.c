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
typedef  int /*<<< orphan*/  u64 ;
struct hns_ppe_cb {int dummy; } ;
struct hns_mac_cb {scalar_t__ mac_type; } ;
struct hnae_vf_cb {int /*<<< orphan*/  port_index; int /*<<< orphan*/  dsaf_dev; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/ * qs; } ;

/* Variables and functions */
 scalar_t__ ETH_SS_STATS ; 
 scalar_t__ HNAE_PORT_SERVICE ; 
 struct hnae_vf_cb* FUNC0 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct hns_mac_cb* FUNC2 (struct hnae_handle*) ; 
 struct hns_ppe_cb* FUNC3 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_mac_cb*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_mac_cb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_ppe_cb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(struct hnae_handle *handle, u64 *data)
{
	int idx;
	struct hns_mac_cb *mac_cb;
	struct hns_ppe_cb *ppe_cb;
	u64 *p = data;
	struct  hnae_vf_cb *vf_cb;

	if (!handle || !data) {
		FUNC10("hns_ae_get_stats NULL handle or data pointer!\n");
		return;
	}

	vf_cb = FUNC0(handle);
	mac_cb = FUNC2(handle);
	ppe_cb = FUNC3(handle);

	for (idx = 0; idx < handle->q_num; idx++) {
		FUNC9(handle->qs[idx], p);
		p += FUNC8((int)ETH_SS_STATS);
	}

	FUNC7(ppe_cb, p);
	p += FUNC6((int)ETH_SS_STATS);

	FUNC5(mac_cb, p);
	p += FUNC4(mac_cb, (int)ETH_SS_STATS);

	if (mac_cb->mac_type == HNAE_PORT_SERVICE)
		FUNC1(vf_cb->dsaf_dev, p, vf_cb->port_index);
}