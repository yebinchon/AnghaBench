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
struct emac_adapter {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int FUNC0 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct emac_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC4(struct emac_adapter *adpt)
{
	int ret;

	FUNC2(adpt);
	FUNC1(adpt);

	ret = FUNC0(adpt);
	if (ret)
		FUNC3(adpt->netdev,
			   "could not reinitialize internal PHY (error=%i)\n",
			   ret);
}