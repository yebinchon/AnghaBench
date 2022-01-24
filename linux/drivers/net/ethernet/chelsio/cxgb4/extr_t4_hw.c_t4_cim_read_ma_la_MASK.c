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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_DEBUGCFG_A ; 
 int CIM_MALA_SIZE ; 
 int /*<<< orphan*/  CIM_PI_LA_MADEBUGDATA_A ; 
 int /*<<< orphan*/  CIM_PO_LA_MADEBUGDATA_A ; 
 int LADBGEN_F ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct adapter *adap, u32 *ma_req, u32 *ma_rsp)
{
	u32 cfg;
	int i, j, idx;

	cfg = FUNC2(adap, CIM_DEBUGCFG_A);
	if (cfg & LADBGEN_F)
		FUNC3(adap, CIM_DEBUGCFG_A, cfg ^ LADBGEN_F);

	for (i = 0; i < CIM_MALA_SIZE; i++) {
		for (j = 0; j < 5; j++) {
			idx = 8 * i + j;
			FUNC3(adap, CIM_DEBUGCFG_A, FUNC1(idx) |
				     FUNC0(idx));
			*ma_req++ = FUNC2(adap, CIM_PO_LA_MADEBUGDATA_A);
			*ma_rsp++ = FUNC2(adap, CIM_PI_LA_MADEBUGDATA_A);
		}
	}
	FUNC3(adap, CIM_DEBUGCFG_A, cfg);
}