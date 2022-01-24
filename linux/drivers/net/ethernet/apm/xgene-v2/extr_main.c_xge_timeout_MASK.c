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
struct xge_pdata {int /*<<< orphan*/  napi; int /*<<< orphan*/  tx_ring; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMATXCTRL ; 
 int /*<<< orphan*/  DMATXSTATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct xge_pdata* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC10 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC11 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct xge_pdata*) ; 
 int /*<<< orphan*/  FUNC16 (struct xge_pdata*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC17(struct net_device *ndev)
{
	struct xge_pdata *pdata = FUNC2(ndev);

	FUNC6();

	if (!FUNC3(ndev))
		goto out;

	FUNC5(ndev);
	FUNC9(pdata);
	FUNC0(&pdata->napi);

	FUNC16(pdata, DMATXCTRL, 0);
	FUNC14(ndev);
	FUNC8(ndev);
	FUNC16(pdata, DMATXSTATUS, ~0U);

	FUNC13(pdata->tx_ring);
	FUNC15(pdata);
	FUNC12(pdata);

	FUNC1(&pdata->napi);
	FUNC10(pdata);
	FUNC11(pdata);
	FUNC4(ndev);

out:
	FUNC7();
}