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
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcms_phy*) ; 
 scalar_t__ FUNC1 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct brcms_phy*,int) ; 

void FUNC4(struct brcms_phy_pub *ppi, bool user_flag)
{
	struct brcms_phy *pi;
	pi = (struct brcms_phy *) ppi;

	if (FUNC0(pi))
		FUNC2(pi, true);
	else if (FUNC1(pi))
		FUNC3(pi, true);
}