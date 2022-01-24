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
typedef  int u32 ;
struct fw_hello_cmd {int /*<<< orphan*/  err_to_clearinit; } ;
struct adapter {int dummy; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;
typedef  enum dev_master { ____Placeholder_dev_master } dev_master ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int DEV_STATE_ERR ; 
 int DEV_STATE_INIT ; 
 int DEV_STATE_UNINIT ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int FW_CMD_HELLO_RETRIES ; 
 int FW_CMD_HELLO_TIMEOUT ; 
 int FW_HELLO_CMD_CLEARINIT_F ; 
 int FW_HELLO_CMD_ERR_F ; 
 int FW_HELLO_CMD_INIT_F ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FW_HELLO_CMD_MBMASTER_M ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HELLO ; 
 int /*<<< orphan*/  FUNC6 (struct fw_hello_cmd,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MASTER_CANT ; 
 int MASTER_MUST ; 
 int /*<<< orphan*/  PCIE_FW_A ; 
 int PCIE_FW_ERR_F ; 
 int PCIE_FW_INIT_F ; 
 unsigned int FUNC7 (int) ; 
 unsigned int PCIE_FW_MASTER_M ; 
 int PCIE_FW_MASTER_VLD_F ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  fw_hello_cmd_stage_os ; 
 int /*<<< orphan*/  FUNC10 (struct fw_hello_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 
 int FUNC14 (struct adapter*,unsigned int,struct fw_hello_cmd*,int,struct fw_hello_cmd*) ; 

int FUNC15(struct adapter *adap, unsigned int mbox, unsigned int evt_mbox,
		enum dev_master master, enum dev_state *state)
{
	int ret;
	struct fw_hello_cmd c;
	u32 v;
	unsigned int master_mbox;
	int retries = FW_CMD_HELLO_RETRIES;

retry:
	FUNC10(&c, 0, sizeof(c));
	FUNC6(c, HELLO, WRITE);
	c.err_to_clearinit = FUNC9(
		FUNC0(master == MASTER_CANT) |
		FUNC1(master == MASTER_MUST) |
		FUNC4(master == MASTER_MUST ?
					mbox : FW_HELLO_CMD_MBMASTER_M) |
		FUNC2(evt_mbox) |
		FUNC5(fw_hello_cmd_stage_os) |
		FW_HELLO_CMD_CLEARINIT_F);

	/*
	 * Issue the HELLO command to the firmware.  If it's not successful
	 * but indicates that we got a "busy" or "timeout" condition, retry
	 * the HELLO until we exhaust our retry limit.  If we do exceed our
	 * retry limit, check to see if the firmware left us any error
	 * information and report that if so.
	 */
	ret = FUNC14(adap, mbox, &c, sizeof(c), &c);
	if (ret < 0) {
		if ((ret == -EBUSY || ret == -ETIMEDOUT) && retries-- > 0)
			goto retry;
		if (FUNC12(adap, PCIE_FW_A) & PCIE_FW_ERR_F)
			FUNC13(adap);
		return ret;
	}

	v = FUNC8(c.err_to_clearinit);
	master_mbox = FUNC3(v);
	if (state) {
		if (v & FW_HELLO_CMD_ERR_F)
			*state = DEV_STATE_ERR;
		else if (v & FW_HELLO_CMD_INIT_F)
			*state = DEV_STATE_INIT;
		else
			*state = DEV_STATE_UNINIT;
	}

	/*
	 * If we're not the Master PF then we need to wait around for the
	 * Master PF Driver to finish setting up the adapter.
	 *
	 * Note that we also do this wait if we're a non-Master-capable PF and
	 * there is no current Master PF; a Master PF may show up momentarily
	 * and we wouldn't want to fail pointlessly.  (This can happen when an
	 * OS loads lots of different drivers rapidly at the same time).  In
	 * this case, the Master PF returned by the firmware will be
	 * PCIE_FW_MASTER_M so the test below will work ...
	 */
	if ((v & (FW_HELLO_CMD_ERR_F|FW_HELLO_CMD_INIT_F)) == 0 &&
	    master_mbox != mbox) {
		int waiting = FW_CMD_HELLO_TIMEOUT;

		/*
		 * Wait for the firmware to either indicate an error or
		 * initialized state.  If we see either of these we bail out
		 * and report the issue to the caller.  If we exhaust the
		 * "hello timeout" and we haven't exhausted our retries, try
		 * again.  Otherwise bail with a timeout error.
		 */
		for (;;) {
			u32 pcie_fw;

			FUNC11(50);
			waiting -= 50;

			/*
			 * If neither Error nor Initialized are indicated
			 * by the firmware keep waiting till we exhaust our
			 * timeout ... and then retry if we haven't exhausted
			 * our retries ...
			 */
			pcie_fw = FUNC12(adap, PCIE_FW_A);
			if (!(pcie_fw & (PCIE_FW_ERR_F|PCIE_FW_INIT_F))) {
				if (waiting <= 0) {
					if (retries-- > 0)
						goto retry;

					return -ETIMEDOUT;
				}
				continue;
			}

			/*
			 * We either have an Error or Initialized condition
			 * report errors preferentially.
			 */
			if (state) {
				if (pcie_fw & PCIE_FW_ERR_F)
					*state = DEV_STATE_ERR;
				else if (pcie_fw & PCIE_FW_INIT_F)
					*state = DEV_STATE_INIT;
			}

			/*
			 * If we arrived before a Master PF was selected and
			 * there's not a valid Master PF, grab its identity
			 * for our caller.
			 */
			if (master_mbox == PCIE_FW_MASTER_M &&
			    (pcie_fw & PCIE_FW_MASTER_VLD_F))
				master_mbox = FUNC7(pcie_fw);
			break;
		}
	}

	return master_mbox;
}