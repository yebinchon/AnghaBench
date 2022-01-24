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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int CIM_NUM_IBQ ; 
 int CIM_NUM_OBQ ; 
 int CIM_NUM_OBQ_T5 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  UP_IBQ_0_RDADDR_A ; 
 int /*<<< orphan*/  UP_IBQ_0_SHADOW_RDADDR_A ; 
 int /*<<< orphan*/  UP_OBQ_0_REALADDR_A ; 
 int /*<<< orphan*/  UP_OBQ_0_SHADOW_REALADDR_A ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,...) ; 
 int FUNC9 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC11(struct seq_file *seq, void *v)
{
	static const char * const qname[] = {
		"TP0", "TP1", "ULP", "SGE0", "SGE1", "NC-SI",
		"ULP0", "ULP1", "ULP2", "ULP3", "SGE", "NC-SI",
		"SGE0-RX", "SGE1-RX"
	};

	int i;
	struct adapter *adap = seq->private;
	u16 base[CIM_NUM_IBQ + CIM_NUM_OBQ_T5];
	u16 size[CIM_NUM_IBQ + CIM_NUM_OBQ_T5];
	u32 stat[(4 * (CIM_NUM_IBQ + CIM_NUM_OBQ_T5))];
	u16 thres[CIM_NUM_IBQ];
	u32 obq_wr_t4[2 * CIM_NUM_OBQ], *wr;
	u32 obq_wr_t5[2 * CIM_NUM_OBQ_T5];
	u32 *p = stat;
	int cim_num_obq = FUNC7(adap->params.chip) ?
				CIM_NUM_OBQ : CIM_NUM_OBQ_T5;

	i = FUNC9(adap, FUNC7(adap->params.chip) ? UP_IBQ_0_RDADDR_A :
			UP_IBQ_0_SHADOW_RDADDR_A,
			FUNC0(stat), stat);
	if (!i) {
		if (FUNC7(adap->params.chip)) {
			i = FUNC9(adap, UP_OBQ_0_REALADDR_A,
					FUNC0(obq_wr_t4), obq_wr_t4);
			wr = obq_wr_t4;
		} else {
			i = FUNC9(adap, UP_OBQ_0_SHADOW_REALADDR_A,
					FUNC0(obq_wr_t5), obq_wr_t5);
			wr = obq_wr_t5;
		}
	}
	if (i)
		return i;

	FUNC10(adap, base, size, thres);

	FUNC8(seq,
		   "  Queue  Base  Size Thres  RdPtr WrPtr  SOP  EOP Avail\n");
	for (i = 0; i < CIM_NUM_IBQ; i++, p += 4)
		FUNC8(seq, "%7s %5x %5u %5u %6x  %4x %4u %4u %5u\n",
			   qname[i], base[i], size[i], thres[i],
			   FUNC1(p[0]), FUNC2(p[1]),
			   FUNC6(p[3]), FUNC3(p[3]),
			   FUNC5(p[2]) * 16);
	for ( ; i < CIM_NUM_IBQ + cim_num_obq; i++, p += 4, wr += 2)
		FUNC8(seq, "%7s %5x %5u %12x  %4x %4u %4u %5u\n",
			   qname[i], base[i], size[i],
			   FUNC4(p[0]) & 0x3fff, wr[0] - base[i],
			   FUNC6(p[3]), FUNC3(p[3]),
			   FUNC5(p[2]) * 16);
	return 0;
}