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
struct TYPE_2__ {int tx_en; int rx_en; int en; } ;
union cvmx_agl_gmx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_mgmt {scalar_t__ agl; } ;

/* Variables and functions */
 scalar_t__ AGL_GMX_PRT_CFG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct octeon_mgmt *p)
{
	union cvmx_agl_gmx_prtx_cfg prtx_cfg;

	/* Restore the GMX enable state only if link is set */
	prtx_cfg.u64 = FUNC0(p->agl + AGL_GMX_PRT_CFG);
	prtx_cfg.s.tx_en = 1;
	prtx_cfg.s.rx_en = 1;
	prtx_cfg.s.en = 1;
	FUNC1(p->agl + AGL_GMX_PRT_CFG, prtx_cfg.u64);
}