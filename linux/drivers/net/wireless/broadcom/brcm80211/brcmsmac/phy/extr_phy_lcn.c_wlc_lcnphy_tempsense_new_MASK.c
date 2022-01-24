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
typedef  int u16 ;
struct brcms_phy {TYPE_1__* sh; int /*<<< orphan*/  d11core; } ;
typedef  int s16 ;
struct TYPE_2__ {int /*<<< orphan*/  physhim; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MCTL_EN_MAC ; 
 int /*<<< orphan*/  TEMPSENSE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int,int) ; 
 int FUNC3 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 

s16 FUNC8(struct brcms_phy *pi, bool mode)
{
	u16 tempsenseval1, tempsenseval2;
	s16 avg = 0;
	bool suspend = false;

	if (mode == 1) {
		suspend = (0 == (FUNC1(pi->d11core,
					     FUNC0(maccontrol)) &
				 MCTL_EN_MAC));
		if (!suspend)
			FUNC6(pi->sh->physhim);
		FUNC7(pi, TEMPSENSE);
	}
	tempsenseval1 = FUNC3(pi, 0x476) & 0x1FF;
	tempsenseval2 = FUNC3(pi, 0x477) & 0x1FF;

	if (tempsenseval1 > 255)
		avg = (s16) (tempsenseval1 - 512);
	else
		avg = (s16) tempsenseval1;

	if (tempsenseval2 > 255)
		avg += (s16) (tempsenseval2 - 512);
	else
		avg += (s16) tempsenseval2;

	avg /= 2;

	if (mode == 1) {

		FUNC2(pi, 0x448, (0x1 << 14), (1) << 14);

		FUNC4(100);
		FUNC2(pi, 0x448, (0x1 << 14), (0) << 14);

		if (!suspend)
			FUNC5(pi->sh->physhim);
	}
	return avg;
}