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
typedef  int u32 ;
struct ce_desc_64 {int dummy; } ;
struct ce_desc {int dummy; } ;
struct ce_attr {int /*<<< orphan*/  src_sz_max; int /*<<< orphan*/  src_nentries; } ;
struct ath10k_ce_ring {int /*<<< orphan*/  base_addr_owner_space; int /*<<< orphan*/  base_addr_ce_space; int /*<<< orphan*/  nentries_mask; int /*<<< orphan*/  write_index; int /*<<< orphan*/  sw_index; int /*<<< orphan*/  hw_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* src_ring; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct TYPE_2__ {scalar_t__ target_64bit; } ;
struct ath10k {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int FUNC0 (struct ath10k*,unsigned int) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ath10k*,int /*<<< orphan*/ ,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct ath10k *ar,
				   unsigned int ce_id,
				   const struct ce_attr *attr)
{
	struct ath10k_ce *ce = FUNC1(ar);
	struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
	struct ath10k_ce_ring *src_ring = ce_state->src_ring;
	u32 nentries, ctrl_addr = FUNC0(ar, ce_id);

	nentries = FUNC12(attr->src_nentries);

	if (ar->hw_params.target_64bit)
		FUNC11(src_ring->base_addr_owner_space, 0,
		       nentries * sizeof(struct ce_desc_64));
	else
		FUNC11(src_ring->base_addr_owner_space, 0,
		       nentries * sizeof(struct ce_desc));

	src_ring->sw_index = FUNC7(ar, ctrl_addr);
	src_ring->sw_index &= src_ring->nentries_mask;
	src_ring->hw_index = src_ring->sw_index;

	src_ring->write_index =
		FUNC9(ar, ctrl_addr);
	src_ring->write_index &= src_ring->nentries_mask;

	FUNC2(ar, ce_id,
					 src_ring->base_addr_ce_space);
	FUNC8(ar, ctrl_addr, nentries);
	FUNC4(ar, ctrl_addr, attr->src_sz_max);
	FUNC3(ar, ctrl_addr, 0);
	FUNC6(ar, ctrl_addr, 0);
	FUNC5(ar, ctrl_addr, nentries);

	FUNC10(ar, ATH10K_DBG_BOOT,
		   "boot init ce src ring id %d entries %d base_addr %pK\n",
		   ce_id, nentries, src_ring->base_addr_owner_space);

	return 0;
}