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
typedef  scalar_t__ u16 ;
struct fw_rss_ind_tbl_cmd {void* startidx; void* niqid; int /*<<< orphan*/  iq0_to_iq2; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_rss_ind_tbl_cmd) ; 
 int /*<<< orphan*/  FW_RSS_IND_TBL_CMD ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (unsigned int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_rss_ind_tbl_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (struct adapter*,struct fw_rss_ind_tbl_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC11(struct adapter *adapter, unsigned int viid,
			  int start, int n, const u16 *rspq, int nrspq)
{
	const u16 *rsp = rspq;
	const u16 *rsp_end = rspq+nrspq;
	struct fw_rss_ind_tbl_cmd cmd;

	/*
	 * Initialize firmware command template to write the RSS table.
	 */
	FUNC8(&cmd, 0, sizeof(cmd));
	cmd.op_to_viid = FUNC7(FUNC0(FW_RSS_IND_TBL_CMD) |
				     FW_CMD_REQUEST_F |
				     FW_CMD_WRITE_F |
				     FUNC5(viid));
	cmd.retval_len16 = FUNC7(FUNC1(cmd));

	/*
	 * Each firmware RSS command can accommodate up to 32 RSS Ingress
	 * Queue Identifiers.  These Ingress Queue IDs are packed three to
	 * a 32-bit word as 10-bit values with the upper remaining 2 bits
	 * reserved.
	 */
	while (n > 0) {
		__be32 *qp = &cmd.iq0_to_iq2;
		int nq = FUNC9(n, 32);
		int ret;

		/*
		 * Set up the firmware RSS command header to send the next
		 * "nq" Ingress Queue IDs to the firmware.
		 */
		cmd.niqid = FUNC6(nq);
		cmd.startidx = FUNC6(start);

		/*
		 * "nq" more done for the start of the next loop.
		 */
		start += nq;
		n -= nq;

		/*
		 * While there are still Ingress Queue IDs to stuff into the
		 * current firmware RSS command, retrieve them from the
		 * Ingress Queue ID array and insert them into the command.
		 */
		while (nq > 0) {
			/*
			 * Grab up to the next 3 Ingress Queue IDs (wrapping
			 * around the Ingress Queue ID array if necessary) and
			 * insert them into the firmware RSS command at the
			 * current 3-tuple position within the commad.
			 */
			u16 qbuf[3];
			u16 *qbp = qbuf;
			int nqbuf = FUNC9(3, nq);

			nq -= nqbuf;
			qbuf[0] = qbuf[1] = qbuf[2] = 0;
			while (nqbuf) {
				nqbuf--;
				*qbp++ = *rsp++;
				if (rsp >= rsp_end)
					rsp = rspq;
			}
			*qp++ = FUNC7(FUNC2(qbuf[0]) |
					    FUNC3(qbuf[1]) |
					    FUNC4(qbuf[2]));
		}

		/*
		 * Send this portion of the RRS table update to the firmware;
		 * bail out on any errors.
		 */
		ret = FUNC10(adapter, &cmd, sizeof(cmd), NULL);
		if (ret)
			return ret;
	}
	return 0;
}