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
typedef  int u64 ;
struct cgx {int dummy; } ;

/* Variables and functions */
 scalar_t__ CGXX_CMRX_RX_DMAC_CAM0 ; 
 scalar_t__ CGXX_CMRX_RX_DMAC_CTL0 ; 
 int CGX_DMAC_BCAST_MODE ; 
 int CGX_DMAC_CAM_ACCEPT ; 
 int CGX_DMAC_CAM_ADDR_ENABLE ; 
 int CGX_DMAC_MCAST_MODE ; 
 struct cgx* FUNC0 (int) ; 
 int FUNC1 (struct cgx*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cgx*,int,scalar_t__,int) ; 

void FUNC3(int cgx_id, int lmac_id, bool enable)
{
	struct cgx *cgx = FUNC0(cgx_id);
	u64 cfg = 0;

	if (!cgx)
		return;

	if (enable) {
		/* Enable promiscuous mode on LMAC */
		cfg = FUNC1(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
		cfg &= ~(CGX_DMAC_CAM_ACCEPT | CGX_DMAC_MCAST_MODE);
		cfg |= CGX_DMAC_BCAST_MODE;
		FUNC2(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);

		cfg = FUNC1(cgx, 0,
			       (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8));
		cfg &= ~CGX_DMAC_CAM_ADDR_ENABLE;
		FUNC2(cgx, 0,
			  (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8), cfg);
	} else {
		/* Disable promiscuous mode */
		cfg = FUNC1(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
		cfg |= CGX_DMAC_CAM_ACCEPT | CGX_DMAC_MCAST_MODE;
		FUNC2(cgx, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);
		cfg = FUNC1(cgx, 0,
			       (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8));
		cfg |= CGX_DMAC_CAM_ADDR_ENABLE;
		FUNC2(cgx, 0,
			  (CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8), cfg);
	}
}