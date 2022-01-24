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
struct pf_vf_bulletin_content {int length; int /*<<< orphan*/  version; } ;
struct bnx2x {int dummy; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int mapping; } ;

/* Variables and functions */
 struct pf_vf_bulletin_content* FUNC0 (struct bnx2x*,int) ; 
 TYPE_1__* FUNC1 (struct bnx2x*) ; 
 int BULLETIN_CONTENT_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int VF_ACQUIRED ; 
 int VF_CFG_EXT_BULLETIN ; 
 int VF_ENABLED ; 
 int /*<<< orphan*/  abs_vfid ; 
 int FUNC4 (struct bnx2x*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct bnx2x*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pf_vf_bulletin_content*,int) ; 
 int /*<<< orphan*/  bulletin_map ; 
 int /*<<< orphan*/  cfg_flags ; 
 int /*<<< orphan*/  state ; 

int FUNC7(struct bnx2x *bp, int vf)
{
	struct pf_vf_bulletin_content *bulletin = FUNC0(bp, vf);
	dma_addr_t pf_addr = FUNC1(bp)->mapping +
		vf * BULLETIN_CONTENT_SIZE;
	dma_addr_t vf_addr = FUNC5(bp, vf, bulletin_map);
	int rc;

	/* can only update vf after init took place */
	if (FUNC5(bp, vf, state) != VF_ENABLED &&
	    FUNC5(bp, vf, state) != VF_ACQUIRED)
		return 0;

	/* increment bulletin board version and compute crc */
	bulletin->version++;
	FUNC6(bulletin,
				   (FUNC5(bp, vf, cfg_flags) &
				    VF_CFG_EXT_BULLETIN) ? true : false);

	/* propagate bulletin board via dmae to vm memory */
	rc = FUNC4(bp, false, pf_addr,
				  FUNC5(bp, vf, abs_vfid), FUNC2(vf_addr),
				  FUNC3(vf_addr), bulletin->length / 4);
	return rc;
}