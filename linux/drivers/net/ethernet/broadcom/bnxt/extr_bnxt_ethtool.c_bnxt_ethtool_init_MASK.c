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
struct net_device {int dummy; } ;
struct hwrm_selftest_qlist_output {int num_tests; int offline_tests; char* test0_name; int /*<<< orphan*/  test_timeout; } ;
struct hwrm_selftest_qlist_input {int /*<<< orphan*/  member_0; } ;
struct bnxt_test_info {int offline_mask; char** string; scalar_t__ timeout; } ;
struct bnxt {int fw_cap; int num_tests; int hwrm_spec_code; int /*<<< orphan*/  hwrm_cmd_lock; struct bnxt_test_info* test_info; struct net_device* dev; struct hwrm_selftest_qlist_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_DRV_TESTS ; 
 int BNXT_EXTLPBK_TEST_IDX ; 
 int BNXT_FW_CAP_PKG_VER ; 
 int BNXT_IRQ_TEST_IDX ; 
 int BNXT_MACLPBK_TEST_IDX ; 
 int BNXT_MAX_TEST ; 
 int BNXT_PHYLPBK_TEST_IDX ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*) ; 
 scalar_t__ ETH_GSTRING_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_SELFTEST_QLIST ; 
 int FUNC1 (struct bnxt*,struct hwrm_selftest_qlist_input*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct hwrm_selftest_qlist_input*,int /*<<< orphan*/ ,int,int) ; 
 struct bnxt_test_info* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,scalar_t__) ; 

void FUNC12(struct bnxt *bp)
{
	struct hwrm_selftest_qlist_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_selftest_qlist_input req = {0};
	struct bnxt_test_info *test_info;
	struct net_device *dev = bp->dev;
	int i, rc;

	if (!(bp->fw_cap & BNXT_FW_CAP_PKG_VER))
		FUNC2(dev);

	bp->num_tests = 0;
	if (bp->hwrm_spec_code < 0x10704 || !FUNC0(bp))
		return;

	FUNC3(bp, &req, HWRM_SELFTEST_QLIST, -1, -1);
	FUNC6(&bp->hwrm_cmd_lock);
	rc = FUNC1(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc)
		goto ethtool_init_exit;

	test_info = bp->test_info;
	if (!test_info)
		test_info = FUNC4(sizeof(*bp->test_info), GFP_KERNEL);
	if (!test_info)
		goto ethtool_init_exit;

	bp->test_info = test_info;
	bp->num_tests = resp->num_tests + BNXT_DRV_TESTS;
	if (bp->num_tests > BNXT_MAX_TEST)
		bp->num_tests = BNXT_MAX_TEST;

	test_info->offline_mask = resp->offline_tests;
	test_info->timeout = FUNC5(resp->test_timeout);
	if (!test_info->timeout)
		test_info->timeout = HWRM_CMD_TIMEOUT;
	for (i = 0; i < bp->num_tests; i++) {
		char *str = test_info->string[i];
		char *fw_str = resp->test0_name + i * 32;

		if (i == BNXT_MACLPBK_TEST_IDX) {
			FUNC8(str, "Mac loopback test (offline)");
		} else if (i == BNXT_PHYLPBK_TEST_IDX) {
			FUNC8(str, "Phy loopback test (offline)");
		} else if (i == BNXT_EXTLPBK_TEST_IDX) {
			FUNC8(str, "Ext loopback test (offline)");
		} else if (i == BNXT_IRQ_TEST_IDX) {
			FUNC8(str, "Interrupt_test (offline)");
		} else {
			FUNC9(str, fw_str, ETH_GSTRING_LEN);
			FUNC11(str, " test", ETH_GSTRING_LEN - FUNC10(str));
			if (test_info->offline_mask & (1 << i))
				FUNC11(str, " (offline)",
					ETH_GSTRING_LEN - FUNC10(str));
			else
				FUNC11(str, " (online)",
					ETH_GSTRING_LEN - FUNC10(str));
		}
	}

ethtool_init_exit:
	FUNC7(&bp->hwrm_cmd_lock);
}