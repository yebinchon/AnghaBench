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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rvu {int /*<<< orphan*/  hw; } ;
struct nix_rx_flowkey_alg {int dummy; } ;
struct TYPE_2__ {int in_use; int /*<<< orphan*/ * flowkey; } ;
struct nix_hw {TYPE_1__ flowkey; } ;

/* Variables and functions */
 int EINVAL ; 
 int FIELDS_PER_ALG ; 
 int NIX_AF_ERR_RSS_NOSPC_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int NIX_FLOW_KEY_ALG_MAX ; 
 struct nix_hw* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nix_rx_flowkey_alg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rvu *rvu, int blkaddr, u32 flow_cfg)
{
	u64 field[FIELDS_PER_ALG];
	struct nix_hw *hw;
	int fid, rc;

	hw = FUNC1(rvu->hw, blkaddr);
	if (!hw)
		return -EINVAL;

	/* No room to add new flow hash algoritham */
	if (hw->flowkey.in_use >= NIX_FLOW_KEY_ALG_MAX)
		return NIX_AF_ERR_RSS_NOSPC_ALGO;

	/* Generate algo fields for the given flow_cfg */
	rc = FUNC3((struct nix_rx_flowkey_alg *)field, flow_cfg);
	if (rc)
		return rc;

	/* Update ALGX_FIELDX register with generated fields */
	for (fid = 0; fid < FIELDS_PER_ALG; fid++)
		FUNC2(rvu, blkaddr,
			    FUNC0(hw->flowkey.in_use,
							   fid), field[fid]);

	/* Store the flow_cfg for futher lookup */
	rc = hw->flowkey.in_use;
	hw->flowkey.flowkey[rc] = flow_cfg;
	hw->flowkey.in_use++;

	return rc;
}