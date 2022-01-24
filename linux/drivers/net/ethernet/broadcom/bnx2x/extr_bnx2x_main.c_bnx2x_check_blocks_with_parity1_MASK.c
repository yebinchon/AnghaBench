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
struct bnx2x {int dummy; } ;

/* Variables and functions */
#define  AEU_INPUTS_ATTN_BITS_CCM_PARITY_ERROR 143 
#define  AEU_INPUTS_ATTN_BITS_CSDM_PARITY_ERROR 142 
#define  AEU_INPUTS_ATTN_BITS_DEBUG_PARITY_ERROR 141 
#define  AEU_INPUTS_ATTN_BITS_DOORBELLQ_PARITY_ERROR 140 
#define  AEU_INPUTS_ATTN_BITS_NIG_PARITY_ERROR 139 
#define  AEU_INPUTS_ATTN_BITS_PBF_PARITY_ERROR 138 
#define  AEU_INPUTS_ATTN_BITS_QM_PARITY_ERROR 137 
#define  AEU_INPUTS_ATTN_BITS_TIMERS_PARITY_ERROR 136 
#define  AEU_INPUTS_ATTN_BITS_UCM_PARITY_ERROR 135 
#define  AEU_INPUTS_ATTN_BITS_UPB_PARITY_ERROR 134 
#define  AEU_INPUTS_ATTN_BITS_USDM_PARITY_ERROR 133 
#define  AEU_INPUTS_ATTN_BITS_USEMI_PARITY_ERROR 132 
#define  AEU_INPUTS_ATTN_BITS_VAUX_PCI_CORE_PARITY_ERROR 131 
#define  AEU_INPUTS_ATTN_BITS_XCM_PARITY_ERROR 130 
#define  AEU_INPUTS_ATTN_BITS_XSDM_PARITY_ERROR 129 
#define  AEU_INPUTS_ATTN_BITS_XSEMI_PARITY_ERROR 128 
 scalar_t__ CCM_REG_CCM_PRTY_STS ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ CSDM_REG_CSDM_PRTY_STS ; 
 scalar_t__ DBG_REG_DBG_PRTY_STS ; 
 scalar_t__ DORQ_REG_DORQ_PRTY_STS ; 
 scalar_t__ GRCBASE_UPB ; 
 scalar_t__ NIG_REG_NIG_PRTY_STS ; 
 scalar_t__ NIG_REG_NIG_PRTY_STS_0 ; 
 scalar_t__ NIG_REG_NIG_PRTY_STS_1 ; 
 scalar_t__ PBF_REG_PBF_PRTY_STS ; 
 scalar_t__ PB_REG_PB_PRTY_STS ; 
 scalar_t__ QM_REG_QM_PRTY_STS ; 
 scalar_t__ TM_REG_TM_PRTY_STS ; 
 scalar_t__ UCM_REG_UCM_PRTY_STS ; 
 scalar_t__ USDM_REG_USDM_PRTY_STS ; 
 scalar_t__ USEM_REG_USEM_PRTY_STS_0 ; 
 scalar_t__ USEM_REG_USEM_PRTY_STS_1 ; 
 scalar_t__ XCM_REG_XCM_PRTY_STS ; 
 scalar_t__ XSDM_REG_XSDM_PRTY_STS ; 
 scalar_t__ XSEM_REG_XSEM_PRTY_STS_0 ; 
 scalar_t__ XSEM_REG_XSEM_PRTY_STS_1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct bnx2x *bp, u32 sig,
					    int *par_num, bool *global,
					    bool print)
{
	u32 cur_bit;
	bool res;
	int i;

	res = false;

	for (i = 0; sig; i++) {
		cur_bit = (0x1UL << i);
		if (sig & cur_bit) {
			res |= true; /* Each bit is real error! */
			switch (cur_bit) {
			case AEU_INPUTS_ATTN_BITS_PBF_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "PBF");
					FUNC2(bp, PBF_REG_PBF_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_QM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "QM");
					FUNC2(bp, QM_REG_QM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_TIMERS_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "TM");
					FUNC2(bp, TM_REG_TM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_XSDM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "XSDM");
					FUNC2(bp,
						      XSDM_REG_XSDM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_XCM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "XCM");
					FUNC2(bp, XCM_REG_XCM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_XSEMI_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++,
							  "XSEMI");
					FUNC2(bp,
						      XSEM_REG_XSEM_PRTY_STS_0);
					FUNC2(bp,
						      XSEM_REG_XSEM_PRTY_STS_1);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_DOORBELLQ_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++,
							  "DOORBELLQ");
					FUNC2(bp,
						      DORQ_REG_DORQ_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_NIG_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "NIG");
					if (FUNC0(bp)) {
						FUNC2(bp,
							NIG_REG_NIG_PRTY_STS);
					} else {
						FUNC2(bp,
							NIG_REG_NIG_PRTY_STS_0);
						FUNC2(bp,
							NIG_REG_NIG_PRTY_STS_1);
					}
				}
				break;
			case AEU_INPUTS_ATTN_BITS_VAUX_PCI_CORE_PARITY_ERROR:
				if (print)
					FUNC1((*par_num)++,
							  "VAUX PCI CORE");
				*global = true;
				break;
			case AEU_INPUTS_ATTN_BITS_DEBUG_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++,
							  "DEBUG");
					FUNC2(bp, DBG_REG_DBG_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_USDM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "USDM");
					FUNC2(bp,
						      USDM_REG_USDM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_UCM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "UCM");
					FUNC2(bp, UCM_REG_UCM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_USEMI_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++,
							  "USEMI");
					FUNC2(bp,
						      USEM_REG_USEM_PRTY_STS_0);
					FUNC2(bp,
						      USEM_REG_USEM_PRTY_STS_1);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_UPB_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "UPB");
					FUNC2(bp, GRCBASE_UPB +
							  PB_REG_PB_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_CSDM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "CSDM");
					FUNC2(bp,
						      CSDM_REG_CSDM_PRTY_STS);
				}
				break;
			case AEU_INPUTS_ATTN_BITS_CCM_PARITY_ERROR:
				if (print) {
					FUNC1((*par_num)++, "CCM");
					FUNC2(bp, CCM_REG_CCM_PRTY_STS);
				}
				break;
			}

			/* Clear the bit */
			sig &= ~cur_bit;
		}
	}

	return res;
}