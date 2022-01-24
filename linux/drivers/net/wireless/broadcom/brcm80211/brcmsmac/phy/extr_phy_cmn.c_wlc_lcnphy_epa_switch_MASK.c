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
typedef  int u16 ;
struct brcms_phy {TYPE_3__* d11core; TYPE_1__* sh; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  drv_cc; } ;
struct TYPE_4__ {scalar_t__ chip; int boardflags; int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 scalar_t__ BCMA_CHIP_ID_BCM4313 ; 
 int BFL_FEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct brcms_phy *pi, bool mode)
{
	if ((pi->sh->chip == BCMA_CHIP_ID_BCM4313) &&
	    (pi->sh->boardflags & BFL_FEM)) {
		if (mode) {
			u16 txant = 0;
			txant = FUNC4(pi->sh->physhim);
			if (txant == 1) {
				FUNC3(pi, 0x44d, (0x1 << 2), (1) << 2);

				FUNC3(pi, 0x44c, (0x1 << 2), (1) << 2);

			}

			FUNC0(&pi->d11core->bus->drv_cc,
						 0x0, 0x0);
			FUNC1(&pi->d11core->bus->drv_cc,
					     ~0x40, 0x40);
			FUNC2(&pi->d11core->bus->drv_cc,
					       ~0x40, 0x40);
		} else {
			FUNC3(pi, 0x44c, (0x1 << 2), (0) << 2);

			FUNC3(pi, 0x44d, (0x1 << 2), (0) << 2);

			FUNC1(&pi->d11core->bus->drv_cc,
					     ~0x40, 0x00);
			FUNC2(&pi->d11core->bus->drv_cc,
					       ~0x40, 0x00);
			FUNC0(&pi->d11core->bus->drv_cc,
						 0x0, 0x40);
		}
	}
}