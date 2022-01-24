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
struct mac_params {int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  mac_mode; int /*<<< orphan*/  vaddr; } ;
struct hns_mac_cb {int /*<<< orphan*/  dev; int /*<<< orphan*/  mac_id; TYPE_1__* addr_entry_idx; int /*<<< orphan*/  vaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_mac_cb*) ; 

__attribute__((used)) static void FUNC2(struct mac_params *param,
			      struct hns_mac_cb *mac_cb)
{
	param->vaddr = mac_cb->vaddr;
	param->mac_mode = FUNC1(mac_cb);
	FUNC0(param->addr, mac_cb->addr_entry_idx[0].addr);
	param->mac_id = mac_cb->mac_id;
	param->dev = mac_cb->dev;
}