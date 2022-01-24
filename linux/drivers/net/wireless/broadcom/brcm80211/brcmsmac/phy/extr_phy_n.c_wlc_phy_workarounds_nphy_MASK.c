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
struct TYPE_2__ {int /*<<< orphan*/  phy_rev; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; TYPE_1__ pubpi; int /*<<< orphan*/  radio_chanspec; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NPHY_ClassifierCtrl_cck_en ; 
 int NPHY_IQFlip_ADC1 ; 
 int NPHY_IQFlip_ADC2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*) ; 

__attribute__((used)) static void FUNC8(struct brcms_phy *pi)
{
	if (FUNC0(pi->radio_chanspec))
		FUNC3(pi, NPHY_ClassifierCtrl_cck_en, 0);
	else
		FUNC3(pi, NPHY_ClassifierCtrl_cck_en, 1);

	if (pi->phyhang_avoid)
		FUNC4(pi, true);

	FUNC2(pi, 0xb1, NPHY_IQFlip_ADC1 | NPHY_IQFlip_ADC2);

	if (FUNC1(pi->pubpi.phy_rev, 7))
		FUNC7(pi);
	else if (FUNC1(pi->pubpi.phy_rev, 3))
		FUNC6(pi);
	else
		FUNC5(pi);

	if (pi->phyhang_avoid)
		FUNC4(pi, false);
}