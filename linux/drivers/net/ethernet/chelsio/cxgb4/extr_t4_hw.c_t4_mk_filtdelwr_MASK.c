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
struct fw_filter_wr {int /*<<< orphan*/  rx_chan_rx_rpl_iq; void* del_filter_to_l2tix; void* tid_to_iq; void* len16_pkd; void* op_pkd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_FILTER_WR ; 
 int FW_FILTER_WR_DEL_FILTER_F ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_filter_wr*,int /*<<< orphan*/ ,int) ; 

void FUNC8(unsigned int ftid, struct fw_filter_wr *wr, int qid)
{
	FUNC7(wr, 0, sizeof(*wr));
	wr->op_pkd = FUNC6(FUNC4(FW_FILTER_WR));
	wr->len16_pkd = FUNC6(FUNC3(sizeof(*wr) / 16));
	wr->tid_to_iq = FUNC6(FUNC2(ftid) |
				    FUNC0(qid < 0));
	wr->del_filter_to_l2tix = FUNC6(FW_FILTER_WR_DEL_FILTER_F);
	if (qid >= 0)
		wr->rx_chan_rx_rpl_iq =
			FUNC5(FUNC1(qid));
}