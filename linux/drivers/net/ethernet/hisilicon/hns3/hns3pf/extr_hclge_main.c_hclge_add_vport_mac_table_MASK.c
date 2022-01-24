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
typedef  int /*<<< orphan*/  u8 ;
struct list_head {int dummy; } ;
struct hclge_vport_mac_addr_cfg {int hd_tbl_status; int /*<<< orphan*/  node; int /*<<< orphan*/  mac_addr; } ;
struct hclge_vport {struct list_head mc_mac_list; struct list_head uc_mac_list; int /*<<< orphan*/  vport_id; } ;
typedef  enum HCLGE_MAC_ADDR_TYPE { ____Placeholder_HCLGE_MAC_ADDR_TYPE } HCLGE_MAC_ADDR_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HCLGE_MAC_ADDR_UC ; 
 struct hclge_vport_mac_addr_cfg* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC3(struct hclge_vport *vport, const u8 *mac_addr,
			       enum HCLGE_MAC_ADDR_TYPE mac_type)
{
	struct hclge_vport_mac_addr_cfg *mac_cfg;
	struct list_head *list;

	if (!vport->vport_id)
		return;

	mac_cfg = FUNC0(sizeof(*mac_cfg), GFP_KERNEL);
	if (!mac_cfg)
		return;

	mac_cfg->hd_tbl_status = true;
	FUNC2(mac_cfg->mac_addr, mac_addr, ETH_ALEN);

	list = (mac_type == HCLGE_MAC_ADDR_UC) ?
	       &vport->uc_mac_list : &vport->mc_mac_list;

	FUNC1(&mac_cfg->node, list);
}