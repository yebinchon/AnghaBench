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
struct trace_params {int snap_len; int port; int invert; scalar_t__ skip_len; scalar_t__ skip_ofst; scalar_t__ min_len; int* data; int* mask; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MPS_TRC_CFG_A ; 
 int MPS_TRC_FILTER0_DONT_CARE_A ; 
 int MPS_TRC_FILTER0_MATCH_A ; 
 int MPS_TRC_FILTER1_MATCH_A ; 
 int MPS_TRC_FILTER_MATCH_CTL_A_A ; 
 int MPS_TRC_FILTER_MATCH_CTL_B_A ; 
 int T5_TFEN_F ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int TFEN_F ; 
 int FUNC3 (int) ; 
 scalar_t__ TFLENGTH_M ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ TFMINPKTSIZE_M ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ TFOFFSET_M ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (int) ; 
 int TRACE_LEN ; 
 int TRCMULTIFILTER_F ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int,int) ; 

int FUNC11(struct adapter *adap, const struct trace_params *tp,
			int idx, int enable)
{
	int i, ofst = idx * 4;
	u32 data_reg, mask_reg, cfg;

	if (!enable) {
		FUNC10(adap, MPS_TRC_FILTER_MATCH_CTL_A_A + ofst, 0);
		return 0;
	}

	cfg = FUNC9(adap, MPS_TRC_CFG_A);
	if (cfg & TRCMULTIFILTER_F) {
		/* If multiple tracers are enabled, then maximum
		 * capture size is 2.5KB (FIFO size of a single channel)
		 * minus 2 flits for CPL_TRACE_PKT header.
		 */
		if (tp->snap_len > ((10 * 1024 / 4) - (2 * 8)))
			return -EINVAL;
	} else {
		/* If multiple tracers are disabled, to avoid deadlocks
		 * maximum packet capture size of 9600 bytes is recommended.
		 * Also in this mode, only trace0 can be enabled and running.
		 */
		if (tp->snap_len > 9600 || idx)
			return -EINVAL;
	}

	if (tp->port > (FUNC8(adap->params.chip) ? 11 : 19) || tp->invert > 1 ||
	    tp->skip_len > TFLENGTH_M || tp->skip_ofst > TFOFFSET_M ||
	    tp->min_len > TFMINPKTSIZE_M)
		return -EINVAL;

	/* stop the tracer we'll be changing */
	FUNC10(adap, MPS_TRC_FILTER_MATCH_CTL_A_A + ofst, 0);

	idx *= (MPS_TRC_FILTER1_MATCH_A - MPS_TRC_FILTER0_MATCH_A);
	data_reg = MPS_TRC_FILTER0_MATCH_A + idx;
	mask_reg = MPS_TRC_FILTER0_DONT_CARE_A + idx;

	for (i = 0; i < TRACE_LEN / 4; i++, data_reg += 4, mask_reg += 4) {
		FUNC10(adap, data_reg, tp->data[i]);
		FUNC10(adap, mask_reg, ~tp->mask[i]);
	}
	FUNC10(adap, MPS_TRC_FILTER_MATCH_CTL_B_A + ofst,
		     FUNC2(tp->snap_len) |
		     FUNC5(tp->min_len));
	FUNC10(adap, MPS_TRC_FILTER_MATCH_CTL_A_A + ofst,
		     FUNC6(tp->skip_ofst) | FUNC4(tp->skip_len) |
		     (FUNC8(adap->params.chip) ?
		     FUNC7(tp->port) | TFEN_F | FUNC3(tp->invert) :
		     FUNC1(tp->port) | T5_TFEN_F |
		     FUNC0(tp->invert)));

	return 0;
}