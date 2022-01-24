#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct TYPE_3__ {scalar_t__ active_vfs; } ;
struct bnxt {int num_tests; TYPE_2__* test_info; TYPE_1__ pf; } ;
struct TYPE_4__ {int flags; int offline_mask; } ;

/* Variables and functions */
 int BNXT_DRV_TESTS ; 
 size_t BNXT_EXTLPBK_TEST_IDX ; 
 size_t BNXT_IRQ_TEST_IDX ; 
 size_t BNXT_MACLPBK_TEST_IDX ; 
 size_t BNXT_PHYLPBK_TEST_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 int BNXT_TEST_FL_EXT_LPBK ; 
 int ETH_TEST_FL_EXTERNAL_LB ; 
 int ETH_TEST_FL_EXTERNAL_LB_DONE ; 
 int ETH_TEST_FL_FAILED ; 
 int ETH_TEST_FL_OFFLINE ; 
 int FUNC1 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*) ; 
 int FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*,int,int) ; 
 int FUNC6 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnxt*,int,int*) ; 
 scalar_t__ FUNC8 (struct bnxt*) ; 
 scalar_t__ FUNC9 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct bnxt* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev, struct ethtool_test *etest,
			   u64 *buf)
{
	struct bnxt *bp = FUNC12(dev);
	bool do_ext_lpbk = false;
	bool offline = false;
	u8 test_results = 0;
	u8 test_mask = 0;
	int rc = 0, i;

	if (!bp->num_tests || !FUNC0(bp))
		return;
	FUNC10(buf, 0, sizeof(u64) * bp->num_tests);
	if (!FUNC14(dev)) {
		etest->flags |= ETH_TEST_FL_FAILED;
		return;
	}

	if ((etest->flags & ETH_TEST_FL_EXTERNAL_LB) &&
	    (bp->test_info->flags & BNXT_TEST_FL_EXT_LPBK))
		do_ext_lpbk = true;

	if (etest->flags & ETH_TEST_FL_OFFLINE) {
		if (bp->pf.active_vfs) {
			etest->flags |= ETH_TEST_FL_FAILED;
			FUNC13(dev, "Offline tests cannot be run with active VFs\n");
			return;
		}
		offline = true;
	}

	for (i = 0; i < bp->num_tests - BNXT_DRV_TESTS; i++) {
		u8 bit_val = 1 << i;

		if (!(bp->test_info->offline_mask & bit_val))
			test_mask |= bit_val;
		else if (offline)
			test_mask |= bit_val;
	}
	if (!offline) {
		FUNC7(bp, test_mask, &test_results);
	} else {
		rc = FUNC1(bp, false, false);
		if (rc)
			return;
		FUNC7(bp, test_mask, &test_results);

		buf[BNXT_MACLPBK_TEST_IDX] = 1;
		FUNC4(bp, true);
		FUNC11(250);
		rc = FUNC3(bp);
		if (rc) {
			FUNC4(bp, false);
			etest->flags |= ETH_TEST_FL_FAILED;
			return;
		}
		if (FUNC8(bp))
			etest->flags |= ETH_TEST_FL_FAILED;
		else
			buf[BNXT_MACLPBK_TEST_IDX] = 0;

		FUNC4(bp, false);
		FUNC5(bp, true, false);
		FUNC11(1000);
		if (FUNC8(bp)) {
			buf[BNXT_PHYLPBK_TEST_IDX] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}
		if (do_ext_lpbk) {
			etest->flags |= ETH_TEST_FL_EXTERNAL_LB_DONE;
			FUNC5(bp, true, true);
			FUNC11(1000);
			if (FUNC8(bp)) {
				buf[BNXT_EXTLPBK_TEST_IDX] = 1;
				etest->flags |= ETH_TEST_FL_FAILED;
			}
		}
		FUNC5(bp, false, false);
		FUNC2(bp);
		rc = FUNC6(bp, false, true);
	}
	if (rc || FUNC9(bp)) {
		buf[BNXT_IRQ_TEST_IDX] = 1;
		etest->flags |= ETH_TEST_FL_FAILED;
	}
	for (i = 0; i < bp->num_tests - BNXT_DRV_TESTS; i++) {
		u8 bit_val = 1 << i;

		if ((test_mask & bit_val) && !(test_results & bit_val)) {
			buf[i] = 1;
			etest->flags |= ETH_TEST_FL_FAILED;
		}
	}
}