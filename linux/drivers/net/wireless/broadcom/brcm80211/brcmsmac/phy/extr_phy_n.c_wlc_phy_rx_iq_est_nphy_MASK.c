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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct phy_iq_est {int i_pwr; int q_pwr; int iq_prod; } ;
struct TYPE_2__ {size_t phy_corenum; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;

/* Variables and functions */
 int NPHY_IqestCmd_iqMode ; 
 int NPHY_IqestCmd_iqstart ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*,int,int,int) ; 
 int FUNC9 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int,int /*<<< orphan*/ ) ; 

void
FUNC11(struct brcms_phy *pi, struct phy_iq_est *est,
		       u16 num_samps, u8 wait_time, u8 wait_for_crs)
{
	u8 core;

	FUNC10(pi, 0x12b, num_samps);
	FUNC8(pi, 0x12a, (0xff << 0), (wait_time << 0));
	FUNC8(pi, 0x129, NPHY_IqestCmd_iqMode,
		    (wait_for_crs) ? NPHY_IqestCmd_iqMode : 0);

	FUNC8(pi, 0x129, NPHY_IqestCmd_iqstart, NPHY_IqestCmd_iqstart);

	FUNC6(((FUNC9(pi, 0x129) & NPHY_IqestCmd_iqstart) != 0),
		 10000);
	if (FUNC7(FUNC9(pi, 0x129) & NPHY_IqestCmd_iqstart,
		 "HW error: rxiq est"))
		return;

	if ((FUNC9(pi, 0x129) & NPHY_IqestCmd_iqstart) == 0) {
		for (core = 0; core < pi->pubpi.phy_corenum; core++) {
			est[core].i_pwr =
				(FUNC9(pi,
					      FUNC2(core)) << 16)
				| FUNC9(pi, FUNC3(core));
			est[core].q_pwr =
				(FUNC9(pi,
					      FUNC4(core)) << 16)
				| FUNC9(pi, FUNC5(core));
			est[core].iq_prod =
				(FUNC9(pi,
					      FUNC0(core)) << 16) |
				FUNC9(pi, FUNC1(core));
		}
	}
}