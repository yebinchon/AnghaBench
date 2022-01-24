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
typedef  int /*<<< orphan*/  u16 ;
struct fw_rss_ind_tbl_cmd {void* startidx; void* niqid; int /*<<< orphan*/  iq0_to_iq2; void* retval_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_REQUEST_F ; 
 unsigned int FW_CMD_WRITE_F ; 
 unsigned int FUNC1 (struct fw_rss_ind_tbl_cmd) ; 
 int /*<<< orphan*/  FW_RSS_IND_TBL_CMD ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC3 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC4 (int /*<<< orphan*/  const) ; 
 unsigned int FUNC5 (unsigned int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct fw_rss_ind_tbl_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (struct adapter*,int,struct fw_rss_ind_tbl_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC11(struct adapter *adapter, int mbox, unsigned int viid,
			int start, int n, const u16 *rspq, unsigned int nrspq)
{
	int ret;
	const u16 *rsp = rspq;
	const u16 *rsp_end = rspq + nrspq;
	struct fw_rss_ind_tbl_cmd cmd;

	FUNC8(&cmd, 0, sizeof(cmd));
	cmd.op_to_viid = FUNC7(FUNC0(FW_RSS_IND_TBL_CMD) |
			       FW_CMD_REQUEST_F | FW_CMD_WRITE_F |
			       FUNC5(viid));
	cmd.retval_len16 = FUNC7(FUNC1(cmd));

	/* each fw_rss_ind_tbl_cmd takes up to 32 entries */
	while (n > 0) {
		int nq = FUNC9(n, 32);
		__be32 *qp = &cmd.iq0_to_iq2;

		cmd.niqid = FUNC6(nq);
		cmd.startidx = FUNC6(start);

		start += nq;
		n -= nq;

		while (nq > 0) {
			unsigned int v;

			v = FUNC2(*rsp);
			if (++rsp >= rsp_end)
				rsp = rspq;
			v |= FUNC3(*rsp);
			if (++rsp >= rsp_end)
				rsp = rspq;
			v |= FUNC4(*rsp);
			if (++rsp >= rsp_end)
				rsp = rspq;

			*qp++ = FUNC7(v);
			nq -= 3;
		}

		ret = FUNC10(adapter, mbox, &cmd, sizeof(cmd), NULL);
		if (ret)
			return ret;
	}
	return 0;
}