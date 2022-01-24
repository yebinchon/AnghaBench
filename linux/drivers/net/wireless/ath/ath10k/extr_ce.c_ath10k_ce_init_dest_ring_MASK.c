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
struct ce_attr {int /*<<< orphan*/  dest_nentries; } ;
struct ath10k_ce_ring {int /*<<< orphan*/  base_addr_owner_space; int /*<<< orphan*/  base_addr_ce_space; int /*<<< orphan*/  nentries_mask; int /*<<< orphan*/  write_index; int /*<<< orphan*/  sw_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* dest_ring; } ;
struct ath10k_ce {struct ath10k_ce_pipe* ce_states; } ;
struct TYPE_2__ {scalar_t__ target_64bit; } ;
struct ath10k {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int FUNC0 (struct ath10k*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,int) ; 
 struct ath10k_ce* FUNC8 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,int /*<<< orphan*/ ,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ath10k *ar,
				    unsigned int ce_id,
				    const struct ce_attr *attr)
{
	struct ath10k_ce *ce = FUNC8(ar);
	struct ath10k_ce_pipe *ce_state = &ce->ce_states[ce_id];
	struct ath10k_ce_ring *dest_ring = ce_state->dest_ring;
	u32 nentries, ctrl_addr = FUNC0(ar, ce_id);

	nentries = FUNC11(attr->dest_nentries);

	if (ar->hw_params.target_64bit)
		FUNC10(dest_ring->base_addr_owner_space, 0,
		       nentries * sizeof(struct ce_desc_64));
	else
		FUNC10(dest_ring->base_addr_owner_space, 0,
		       nentries * sizeof(struct ce_desc));

	dest_ring->sw_index = FUNC5(ar, ctrl_addr);
	dest_ring->sw_index &= dest_ring->nentries_mask;
	dest_ring->write_index =
		FUNC7(ar, ctrl_addr);
	dest_ring->write_index &= dest_ring->nentries_mask;

	FUNC1(ar, ce_id,
					  dest_ring->base_addr_ce_space);
	FUNC6(ar, ctrl_addr, nentries);
	FUNC2(ar, ctrl_addr, 0);
	FUNC4(ar, ctrl_addr, 0);
	FUNC3(ar, ctrl_addr, nentries);

	FUNC9(ar, ATH10K_DBG_BOOT,
		   "boot ce dest ring id %d entries %d base_addr %pK\n",
		   ce_id, nentries, dest_ring->base_addr_owner_space);

	return 0;
}