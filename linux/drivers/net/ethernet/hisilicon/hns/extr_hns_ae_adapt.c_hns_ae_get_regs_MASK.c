#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct hns_ppe_cb {int dummy; } ;
struct hnae_vf_cb {int /*<<< orphan*/  port_index; TYPE_3__* dsaf_dev; TYPE_1__* mac_cb; } ;
struct hnae_handle {int q_num; int /*<<< orphan*/ * qs; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rcb_common; } ;
struct TYPE_4__ {scalar_t__ mac_type; } ;

/* Variables and functions */
 scalar_t__ HNAE_PORT_SERVICE ; 
 struct hnae_vf_cb* FUNC0 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct hns_ppe_cb* FUNC2 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_ppe_cb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct hnae_handle *handle, void *data)
{
	u32 *p = data;
	int i;
	struct hnae_vf_cb *vf_cb = FUNC0(handle);
	struct hns_ppe_cb *ppe_cb = FUNC2(handle);

	FUNC5(ppe_cb, p);
	p += FUNC6();

	FUNC7(vf_cb->dsaf_dev->rcb_common[0], p);
	p += FUNC8();

	for (i = 0; i < handle->q_num; i++) {
		FUNC9(handle->qs[i], p);
		p += FUNC10();
	}

	FUNC3(vf_cb->mac_cb, p);
	p += FUNC4(vf_cb->mac_cb);

	if (vf_cb->mac_cb->mac_type == HNAE_PORT_SERVICE)
		FUNC1(vf_cb->dsaf_dev, vf_cb->port_index, p);
}