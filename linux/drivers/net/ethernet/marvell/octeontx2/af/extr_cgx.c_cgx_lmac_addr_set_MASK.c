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
typedef  int u8 ;
typedef  int u64 ;
struct cgx {int dummy; } ;

/* Variables and functions */
 scalar_t__ CGXX_CMRX_RX_DMAC_CAM0 ; 
 scalar_t__ CGXX_CMRX_RX_DMAC_CTL0 ; 
 int CGX_DMAC_CAM_ADDR_ENABLE ; 
 int CGX_DMAC_CTL0_CAM_ENABLE ; 
 struct cgx* FUNC0 (int) ; 
 int FUNC1 (struct cgx*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct cgx*,int,scalar_t__,int) ; 
 int FUNC3 (int*) ; 

int FUNC4(u8 cgx_id, u8 lmac_id, u8 *mac_addr)
{
	struct cgx *cgx_dev = FUNC0(cgx_id);
	u64 cfg;

	/* copy 6bytes from macaddr */
	/* memcpy(&cfg, mac_addr, 6); */

	cfg = FUNC3 (mac_addr);

	FUNC2(cgx_dev, 0, (CGXX_CMRX_RX_DMAC_CAM0 + (lmac_id * 0x8)),
		  cfg | CGX_DMAC_CAM_ADDR_ENABLE | ((u64)lmac_id << 49));

	cfg = FUNC1(cgx_dev, lmac_id, CGXX_CMRX_RX_DMAC_CTL0);
	cfg |= CGX_DMAC_CTL0_CAM_ENABLE;
	FUNC2(cgx_dev, lmac_id, CGXX_CMRX_RX_DMAC_CTL0, cfg);

	return 0;
}