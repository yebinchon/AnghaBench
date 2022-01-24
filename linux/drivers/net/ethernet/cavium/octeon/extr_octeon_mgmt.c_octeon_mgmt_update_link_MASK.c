#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ mode; } ;
union cvmx_agl_prtx_ctl {TYPE_2__ s; void* u64; } ;
struct TYPE_6__ {int clk_cnt; } ;
union cvmx_agl_gmx_txx_clk {void* u64; TYPE_3__ s; } ;
struct TYPE_4__ {int duplex; int speed; int slottime; int burst; int speed_msb; } ;
union cvmx_agl_gmx_prtx_cfg {void* u64; TYPE_1__ s; } ;
struct phy_device {int duplex; int speed; int /*<<< orphan*/  link; } ;
struct octeon_mgmt {scalar_t__ agl; scalar_t__ agl_prt_ctl; struct net_device* netdev; } ;
struct net_device {struct phy_device* phydev; } ;

/* Variables and functions */
 scalar_t__ AGL_GMX_PRT_CFG ; 
 scalar_t__ AGL_GMX_TX_CLK ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void*) ; 

__attribute__((used)) static void FUNC3(struct octeon_mgmt *p)
{
	struct net_device *ndev = p->netdev;
	struct phy_device *phydev = ndev->phydev;
	union cvmx_agl_gmx_prtx_cfg prtx_cfg;

	prtx_cfg.u64 = FUNC1(p->agl + AGL_GMX_PRT_CFG);

	if (!phydev->link)
		prtx_cfg.s.duplex = 1;
	else
		prtx_cfg.s.duplex = phydev->duplex;

	switch (phydev->speed) {
	case 10:
		prtx_cfg.s.speed = 0;
		prtx_cfg.s.slottime = 0;

		if (FUNC0(OCTEON_CN6XXX)) {
			prtx_cfg.s.burst = 1;
			prtx_cfg.s.speed_msb = 1;
		}
		break;
	case 100:
		prtx_cfg.s.speed = 0;
		prtx_cfg.s.slottime = 0;

		if (FUNC0(OCTEON_CN6XXX)) {
			prtx_cfg.s.burst = 1;
			prtx_cfg.s.speed_msb = 0;
		}
		break;
	case 1000:
		/* 1000 MBits is only supported on 6XXX chips */
		if (FUNC0(OCTEON_CN6XXX)) {
			prtx_cfg.s.speed = 1;
			prtx_cfg.s.speed_msb = 0;
			/* Only matters for half-duplex */
			prtx_cfg.s.slottime = 1;
			prtx_cfg.s.burst = phydev->duplex;
		}
		break;
	case 0:  /* No link */
	default:
		break;
	}

	/* Write the new GMX setting with the port still disabled. */
	FUNC2(p->agl + AGL_GMX_PRT_CFG, prtx_cfg.u64);

	/* Read GMX CFG again to make sure the config is completed. */
	prtx_cfg.u64 = FUNC1(p->agl + AGL_GMX_PRT_CFG);

	if (FUNC0(OCTEON_CN6XXX)) {
		union cvmx_agl_gmx_txx_clk agl_clk;
		union cvmx_agl_prtx_ctl prtx_ctl;

		prtx_ctl.u64 = FUNC1(p->agl_prt_ctl);
		agl_clk.u64 = FUNC1(p->agl + AGL_GMX_TX_CLK);
		/* MII (both speeds) and RGMII 1000 speed. */
		agl_clk.s.clk_cnt = 1;
		if (prtx_ctl.s.mode == 0) { /* RGMII mode */
			if (phydev->speed == 10)
				agl_clk.s.clk_cnt = 50;
			else if (phydev->speed == 100)
				agl_clk.s.clk_cnt = 5;
		}
		FUNC2(p->agl + AGL_GMX_TX_CLK, agl_clk.u64);
	}
}