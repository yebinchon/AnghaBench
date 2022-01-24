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
 int CGX_RX_DMAC_ADR_MASK ; 
 struct cgx* FUNC0 (int) ; 
 int FUNC1 (struct cgx*,int /*<<< orphan*/ ,scalar_t__) ; 

u64 FUNC2(u8 cgx_id, u8 lmac_id)
{
	struct cgx *cgx_dev = FUNC0(cgx_id);
	u64 cfg;

	cfg = FUNC1(cgx_dev, 0, CGXX_CMRX_RX_DMAC_CAM0 + lmac_id * 0x8);
	return cfg & CGX_RX_DMAC_ADR_MASK;
}