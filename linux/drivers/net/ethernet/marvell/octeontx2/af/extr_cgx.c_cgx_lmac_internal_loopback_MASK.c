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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct cgx {int lmac_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGXX_GMP_PCS_MRX_CTL ; 
 int /*<<< orphan*/  CGXX_GMP_PCS_MRX_CTL_LBK ; 
 int /*<<< orphan*/  CGXX_SPUX_CONTROL1 ; 
 int /*<<< orphan*/  CGXX_SPUX_CONTROL1_LBK ; 
 int ENODEV ; 
 scalar_t__ LMAC_MODE_QSGMII ; 
 scalar_t__ LMAC_MODE_SGMII ; 
 scalar_t__ FUNC0 (struct cgx*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cgx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(void *cgxd, int lmac_id, bool enable)
{
	struct cgx *cgx = cgxd;
	u8 lmac_type;
	u64 cfg;

	if (!cgx || lmac_id >= cgx->lmac_count)
		return -ENODEV;

	lmac_type = FUNC0(cgx, lmac_id);
	if (lmac_type == LMAC_MODE_SGMII || lmac_type == LMAC_MODE_QSGMII) {
		cfg = FUNC1(cgx, lmac_id, CGXX_GMP_PCS_MRX_CTL);
		if (enable)
			cfg |= CGXX_GMP_PCS_MRX_CTL_LBK;
		else
			cfg &= ~CGXX_GMP_PCS_MRX_CTL_LBK;
		FUNC2(cgx, lmac_id, CGXX_GMP_PCS_MRX_CTL, cfg);
	} else {
		cfg = FUNC1(cgx, lmac_id, CGXX_SPUX_CONTROL1);
		if (enable)
			cfg |= CGXX_SPUX_CONTROL1_LBK;
		else
			cfg &= ~CGXX_SPUX_CONTROL1_LBK;
		FUNC2(cgx, lmac_id, CGXX_SPUX_CONTROL1, cfg);
	}
	return 0;
}