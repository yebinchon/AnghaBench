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
struct mcam_camera {int* dphy; int mipi_enabled; int lane; int /*<<< orphan*/  (* calc_dphy ) (struct mcam_camera*) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CSI2_C0_MIPI_EN ; 
 int /*<<< orphan*/  REG_CSI2_CTRL0 ; 
 int /*<<< orphan*/  REG_CSI2_DPHY3 ; 
 int /*<<< orphan*/  REG_CSI2_DPHY5 ; 
 int /*<<< orphan*/  REG_CSI2_DPHY6 ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mcam_camera*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mcam_camera*) ; 

__attribute__((used)) static void FUNC5(struct mcam_camera *mcam)
{
	/* Using MIPI mode and enable MIPI */
	if (mcam->calc_dphy)
		mcam->calc_dphy(mcam);
	FUNC1(mcam, "camera: DPHY3=0x%x, DPHY5=0x%x, DPHY6=0x%x\n",
			mcam->dphy[0], mcam->dphy[1], mcam->dphy[2]);
	FUNC3(mcam, REG_CSI2_DPHY3, mcam->dphy[0]);
	FUNC3(mcam, REG_CSI2_DPHY5, mcam->dphy[1]);
	FUNC3(mcam, REG_CSI2_DPHY6, mcam->dphy[2]);

	if (!mcam->mipi_enabled) {
		if (mcam->lane > 4 || mcam->lane <= 0) {
			FUNC2(mcam, "lane number error\n");
			mcam->lane = 1;	/* set the default value */
		}
		/*
		 * 0x41 actives 1 lane
		 * 0x43 actives 2 lanes
		 * 0x45 actives 3 lanes (never happen)
		 * 0x47 actives 4 lanes
		 */
		FUNC3(mcam, REG_CSI2_CTRL0,
			CSI2_C0_MIPI_EN | FUNC0(mcam->lane));
		mcam->mipi_enabled = true;
	}
}