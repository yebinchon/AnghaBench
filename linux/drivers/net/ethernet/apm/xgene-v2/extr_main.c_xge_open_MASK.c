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
struct xge_pdata {int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMARXCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xge_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct xge_pdata*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct xge_pdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC1(ndev);
	int ret;

	ret = FUNC4(ndev);
	if (ret)
		return ret;

	FUNC0(&pdata->napi);
	ret = FUNC7(ndev);
	if (ret)
		return ret;

	FUNC5(pdata);
	FUNC8(pdata, DMARXCTRL, 1);

	FUNC3(ndev->phydev);
	FUNC6(pdata);
	FUNC2(ndev);

	return 0;
}