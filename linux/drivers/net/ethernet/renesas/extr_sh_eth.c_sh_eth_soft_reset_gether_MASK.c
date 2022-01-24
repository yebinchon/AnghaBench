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
struct sh_eth_private {TYPE_1__* cd; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ select_mii; scalar_t__ csmr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSMR ; 
 int /*<<< orphan*/  EDMR ; 
 int /*<<< orphan*/  EDMR_SRST_GETHER ; 
 int /*<<< orphan*/  EDSR ; 
 int /*<<< orphan*/  EDSR_ENALL ; 
 int /*<<< orphan*/  RDFAR ; 
 int /*<<< orphan*/  RDFFR ; 
 int /*<<< orphan*/  RDFXR ; 
 int /*<<< orphan*/  RDLAR ; 
 int /*<<< orphan*/  TDFAR ; 
 int /*<<< orphan*/  TDFFR ; 
 int /*<<< orphan*/  TDFXR ; 
 int /*<<< orphan*/  TDLAR ; 
 struct sh_eth_private* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct sh_eth_private *mdp = FUNC0(ndev);
	int ret;

	FUNC4(ndev, EDSR_ENALL, EDSR);
	FUNC2(ndev, EDMR, EDMR_SRST_GETHER, EDMR_SRST_GETHER);

	ret = FUNC1(ndev);
	if (ret)
		return ret;

	/* Table Init */
	FUNC4(ndev, 0, TDLAR);
	FUNC4(ndev, 0, TDFAR);
	FUNC4(ndev, 0, TDFXR);
	FUNC4(ndev, 0, TDFFR);
	FUNC4(ndev, 0, RDLAR);
	FUNC4(ndev, 0, RDFAR);
	FUNC4(ndev, 0, RDFXR);
	FUNC4(ndev, 0, RDFFR);

	/* Reset HW CRC register */
	if (mdp->cd->csmr)
		FUNC4(ndev, 0, CSMR);

	/* Select MII mode */
	if (mdp->cd->select_mii)
		FUNC3(ndev);

	return ret;
}