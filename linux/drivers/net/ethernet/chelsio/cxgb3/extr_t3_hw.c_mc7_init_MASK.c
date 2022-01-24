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
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int /*<<< orphan*/  member_4; } ;
struct mc7_timing_params {int member_0; int member_1; int member_2; int member_4; int member_5; int member_6; int /*<<< orphan*/  RdToWrDly; int /*<<< orphan*/  WrToRdDly; int /*<<< orphan*/  BkCyc; int /*<<< orphan*/ * RefCyc; int /*<<< orphan*/  PreCyc; int /*<<< orphan*/  ActToRdWrDly; int /*<<< orphan*/  ActToPreDly; TYPE_1__ member_3; } ;
struct mc7 {unsigned int size; scalar_t__ offset; int /*<<< orphan*/  name; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ A_MC7_BIST_ADDR_BEG ; 
 scalar_t__ A_MC7_BIST_ADDR_END ; 
 scalar_t__ A_MC7_BIST_DATA ; 
 scalar_t__ A_MC7_BIST_OP ; 
 scalar_t__ A_MC7_CAL ; 
 scalar_t__ A_MC7_CFG ; 
 scalar_t__ A_MC7_DLL ; 
 scalar_t__ A_MC7_ECC ; 
 scalar_t__ A_MC7_EXT_MODE1 ; 
 scalar_t__ A_MC7_EXT_MODE2 ; 
 scalar_t__ A_MC7_EXT_MODE3 ; 
 scalar_t__ A_MC7_MODE ; 
 scalar_t__ A_MC7_PARM ; 
 scalar_t__ A_MC7_PRE ; 
 scalar_t__ A_MC7_REF ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int /*<<< orphan*/ ) ; 
 int F_BUSY ; 
 int F_CAL_FAULT ; 
 int F_CLKEN ; 
 int /*<<< orphan*/  F_DLLENB ; 
 int /*<<< orphan*/  F_DLLRST ; 
 unsigned int F_ECCCHKEN ; 
 unsigned int F_ECCGENEN ; 
 int F_IFEN ; 
 unsigned int F_PERREFEN ; 
 int /*<<< orphan*/  F_RDY ; 
 int F_SGL_CAL_EN ; 
 int F_SLOW ; 
 int F_TERM150 ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (unsigned int) ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 scalar_t__ FUNC17 (struct adapter*,scalar_t__,unsigned int const) ; 

__attribute__((used)) static int FUNC18(struct mc7 *mc7, unsigned int mc7_clock, int mem_type)
{
	static const unsigned int mc7_mode[] = {
		0x632, 0x642, 0x652, 0x432, 0x442
	};
	static const struct mc7_timing_params mc7_timings[] = {
		{12, 3, 4, {20, 28, 34, 52, 0}, 15, 6, 4},
		{12, 4, 5, {20, 28, 34, 52, 0}, 16, 7, 4},
		{12, 5, 6, {20, 28, 34, 52, 0}, 17, 8, 4},
		{9, 3, 4, {15, 21, 26, 39, 0}, 12, 6, 4},
		{9, 4, 5, {15, 21, 26, 39, 0}, 13, 7, 4}
	};

	u32 val;
	unsigned int width, density, slow, attempts;
	struct adapter *adapter = mc7->adapter;
	const struct mc7_timing_params *p = &mc7_timings[mem_type];

	if (!mc7->size)
		return 0;

	val = FUNC13(adapter, mc7->offset + A_MC7_CFG);
	slow = val & F_SLOW;
	width = FUNC2(val);
	density = FUNC1(val);

	FUNC15(adapter, mc7->offset + A_MC7_CFG, val | F_IFEN);
	val = FUNC13(adapter, mc7->offset + A_MC7_CFG);	/* flush */
	FUNC12(1);

	if (!slow) {
		FUNC15(adapter, mc7->offset + A_MC7_CAL, F_SGL_CAL_EN);
		FUNC13(adapter, mc7->offset + A_MC7_CAL);
		FUNC12(1);
		if (FUNC13(adapter, mc7->offset + A_MC7_CAL) &
		    (F_BUSY | F_SGL_CAL_EN | F_CAL_FAULT)) {
			FUNC0(adapter, "%s MC7 calibration timed out\n",
			       mc7->name);
			goto out_fail;
		}
	}

	FUNC15(adapter, mc7->offset + A_MC7_PARM,
		     FUNC3(p->ActToPreDly) |
		     FUNC4(p->ActToRdWrDly) | FUNC7(p->PreCyc) |
		     FUNC10(p->RefCyc[density]) | FUNC5(p->BkCyc) |
		     FUNC11(p->WrToRdDly) | FUNC9(p->RdToWrDly));

	FUNC15(adapter, mc7->offset + A_MC7_CFG,
		     val | F_CLKEN | F_TERM150);
	FUNC13(adapter, mc7->offset + A_MC7_CFG);	/* flush */

	if (!slow)
		FUNC14(adapter, mc7->offset + A_MC7_DLL, F_DLLENB,
				 F_DLLENB);
	FUNC16(1);

	val = slow ? 3 : 6;
	if (FUNC17(adapter, mc7->offset + A_MC7_PRE, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_EXT_MODE2, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_EXT_MODE3, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_EXT_MODE1, val))
		goto out_fail;

	if (!slow) {
		FUNC15(adapter, mc7->offset + A_MC7_MODE, 0x100);
		FUNC14(adapter, mc7->offset + A_MC7_DLL, F_DLLRST, 0);
		FUNC16(5);
	}

	if (FUNC17(adapter, mc7->offset + A_MC7_PRE, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_REF, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_REF, 0) ||
	    FUNC17(adapter, mc7->offset + A_MC7_MODE,
		       mc7_mode[mem_type]) ||
	    FUNC17(adapter, mc7->offset + A_MC7_EXT_MODE1, val | 0x380) ||
	    FUNC17(adapter, mc7->offset + A_MC7_EXT_MODE1, val))
		goto out_fail;

	/* clock value is in KHz */
	mc7_clock = mc7_clock * 7812 + mc7_clock / 2;	/* ns */
	mc7_clock /= 1000000;	/* KHz->MHz, ns->us */

	FUNC15(adapter, mc7->offset + A_MC7_REF,
		     F_PERREFEN | FUNC8(mc7_clock));
	FUNC13(adapter, mc7->offset + A_MC7_REF);	/* flush */

	FUNC15(adapter, mc7->offset + A_MC7_ECC, F_ECCGENEN | F_ECCCHKEN);
	FUNC15(adapter, mc7->offset + A_MC7_BIST_DATA, 0);
	FUNC15(adapter, mc7->offset + A_MC7_BIST_ADDR_BEG, 0);
	FUNC15(adapter, mc7->offset + A_MC7_BIST_ADDR_END,
		     (mc7->size << width) - 1);
	FUNC15(adapter, mc7->offset + A_MC7_BIST_OP, FUNC6(1));
	FUNC13(adapter, mc7->offset + A_MC7_BIST_OP);	/* flush */

	attempts = 50;
	do {
		FUNC12(250);
		val = FUNC13(adapter, mc7->offset + A_MC7_BIST_OP);
	} while ((val & F_BUSY) && --attempts);
	if (val & F_BUSY) {
		FUNC0(adapter, "%s MC7 BIST timed out\n", mc7->name);
		goto out_fail;
	}

	/* Enable normal memory accesses. */
	FUNC14(adapter, mc7->offset + A_MC7_CFG, 0, F_RDY);
	return 0;

out_fail:
	return -1;
}