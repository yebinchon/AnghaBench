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
typedef  void* u32 ;
struct vxge_hw_ring_rxd_info {void* rth_value; void* rth_hash_type; void* rth_spdm_hit; void* rth_it_hit; void* rth_bucket; void* vlan; void* is_vlan; void* proto; void* frame; void* l4_cksum; void* l4_cksum_valid; void* l3_cksum; void* l3_cksum_valid; void* fast_path_eligible; void* is_icmp; void* syn_flag; } ;
struct vxge_hw_ring_rxd_1 {int /*<<< orphan*/  control_1; int /*<<< orphan*/  control_0; } ;
struct __vxge_hw_ring {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void FUNC16(
	struct __vxge_hw_ring *ring_handle,
	void *rxdh,
	struct vxge_hw_ring_rxd_info *rxd_info)
{

	struct vxge_hw_ring_rxd_1 *rxdp = (struct vxge_hw_ring_rxd_1 *)rxdh;
	rxd_info->syn_flag =
		(u32)FUNC14(rxdp->control_0);
	rxd_info->is_icmp =
		(u32)FUNC4(rxdp->control_0);
	rxd_info->fast_path_eligible =
		(u32)FUNC2(rxdp->control_0);
	rxd_info->l3_cksum_valid =
		(u32)FUNC6(rxdp->control_0);
	rxd_info->l3_cksum =
		(u32)FUNC7(rxdp->control_0);
	rxd_info->l4_cksum_valid =
		(u32)FUNC8(rxdp->control_0);
	rxd_info->l4_cksum =
		(u32)FUNC9(rxdp->control_0);
	rxd_info->frame =
		(u32)FUNC1(rxdp->control_0);
	rxd_info->proto =
		(u32)FUNC3(rxdp->control_0);
	rxd_info->is_vlan =
		(u32)FUNC5(rxdp->control_0);
	rxd_info->vlan =
		(u32)FUNC15(rxdp->control_1);
	rxd_info->rth_bucket =
		(u32)FUNC10(rxdp->control_0);
	rxd_info->rth_it_hit =
		(u32)FUNC12(rxdp->control_0);
	rxd_info->rth_spdm_hit =
		(u32)FUNC13(rxdp->control_0);
	rxd_info->rth_hash_type =
		(u32)FUNC11(rxdp->control_0);
	rxd_info->rth_value =
		(u32)FUNC0(rxdp->control_1);
}