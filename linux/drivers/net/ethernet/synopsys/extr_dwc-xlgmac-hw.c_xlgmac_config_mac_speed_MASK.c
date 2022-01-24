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
struct xlgmac_pdata {int phy_speed; } ;

/* Variables and functions */
#define  SPEED_100000 131 
#define  SPEED_25000 130 
#define  SPEED_40000 129 
#define  SPEED_50000 128 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct xlgmac_pdata*) ; 

__attribute__((used)) static void FUNC4(struct xlgmac_pdata *pdata)
{
	switch (pdata->phy_speed) {
	case SPEED_100000:
		FUNC0(pdata);
		break;

	case SPEED_50000:
		FUNC3(pdata);
		break;

	case SPEED_40000:
		FUNC2(pdata);
		break;

	case SPEED_25000:
		FUNC1(pdata);
		break;
	}
}