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
typedef  unsigned int u8 ;
typedef  int u32 ;
struct TYPE_2__ {unsigned int* mps_bg_map; } ;
struct adapter {int flags; int /*<<< orphan*/  pf; int /*<<< orphan*/  mbox; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int,unsigned int) ; 
 int CXGB4_FW_OK ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DEV_MPSBGMAP ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_NPORTS ; 
 int /*<<< orphan*/  MPS_CMN_CTL_A ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct adapter*,int) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 

unsigned int FUNC7(struct adapter *adapter, int pidx)
{
	u8 *mps_bg_map;
	unsigned int nports;

	nports = 1 << FUNC3(FUNC6(adapter, MPS_CMN_CTL_A));
	if (pidx >= nports) {
		FUNC0(adapter, "MPS Port Index %d >= Nports %d\n",
			pidx, nports);
		return 0;
	}

	/* If we've already retrieved/computed this, just return the result.
	 */
	mps_bg_map = adapter->params.mps_bg_map;
	if (mps_bg_map[pidx])
		return mps_bg_map[pidx];

	/* Newer Firmware can tell us what the MPS Buffer Group Map is.
	 * If we're talking to such Firmware, let it tell us.  If the new
	 * API isn't supported, revert back to old hardcoded way.  The value
	 * obtained from Firmware is encoded in below format:
	 *
	 * val = (( MPSBGMAP[Port 3] << 24 ) |
	 *        ( MPSBGMAP[Port 2] << 16 ) |
	 *        ( MPSBGMAP[Port 1] <<  8 ) |
	 *        ( MPSBGMAP[Port 0] <<  0 ))
	 */
	if (adapter->flags & CXGB4_FW_OK) {
		u32 param, val;
		int ret;

		param = (FUNC1(FW_PARAMS_MNEM_DEV) |
			 FUNC2(FW_PARAMS_PARAM_DEV_MPSBGMAP));
		ret = FUNC5(adapter, adapter->mbox, adapter->pf,
					 0, 1, &param, &val);
		if (!ret) {
			int p;

			/* Store the BG Map for all of the Ports in order to
			 * avoid more calls to the Firmware in the future.
			 */
			for (p = 0; p < MAX_NPORTS; p++, val >>= 8)
				mps_bg_map[p] = val & 0xff;

			return mps_bg_map[pidx];
		}
	}

	/* Either we're not talking to the Firmware or we're dealing with
	 * older Firmware which doesn't support the new API to get the MPS
	 * Buffer Group Map.  Fall back to computing it ourselves.
	 */
	mps_bg_map[pidx] = FUNC4(adapter, pidx);
	return mps_bg_map[pidx];
}