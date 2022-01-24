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
typedef  int /*<<< orphan*/  u8 ;
struct brcms_phy_pub {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PHY_NOISE_SAMPLE_EXTERNAL ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy_pub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct brcms_phy_pub *pih)
{
	u8 channel;

	channel = FUNC0(FUNC1(pih));

	FUNC2(pih, PHY_NOISE_SAMPLE_EXTERNAL, channel);
}