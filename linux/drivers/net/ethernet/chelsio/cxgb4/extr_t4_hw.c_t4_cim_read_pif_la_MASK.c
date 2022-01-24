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
 int /*<<< orphan*/  CIM_DEBUGSTS_A ; 
 int CIM_PIFLA_SIZE ; 
 int /*<<< orphan*/  CIM_PI_LA_DEBUGDATA_A ; 
 int /*<<< orphan*/  CIM_PO_LA_DEBUGDATA_A ; 
 int LADBGEN_F ; 
 int PILADBGRDPTR_M ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int POLADBGRDPTR_M ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 void* FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct adapter *adap, u32 *pif_req, u32 *pif_rsp,
			unsigned int *pif_req_wrptr,
			unsigned int *pif_rsp_wrptr)
{
	int i, j;
	u32 cfg, val, req, rsp;

	cfg = FUNC4(adap, CIM_DEBUGCFG_A);
	if (cfg & LADBGEN_F)
		FUNC5(adap, CIM_DEBUGCFG_A, cfg ^ LADBGEN_F);

	val = FUNC4(adap, CIM_DEBUGSTS_A);
	req = FUNC3(val);
	rsp = FUNC1(val);
	if (pif_req_wrptr)
		*pif_req_wrptr = req;
	if (pif_rsp_wrptr)
		*pif_rsp_wrptr = rsp;

	for (i = 0; i < CIM_PIFLA_SIZE; i++) {
		for (j = 0; j < 6; j++) {
			FUNC5(adap, CIM_DEBUGCFG_A, FUNC2(req) |
				     FUNC0(rsp));
			*pif_req++ = FUNC4(adap, CIM_PO_LA_DEBUGDATA_A);
			*pif_rsp++ = FUNC4(adap, CIM_PI_LA_DEBUGDATA_A);
			req++;
			rsp++;
		}
		req = (req + 2) & POLADBGRDPTR_M;
		rsp = (rsp + 2) & PILADBGRDPTR_M;
	}
	FUNC5(adap, CIM_DEBUGCFG_A, cfg);
}