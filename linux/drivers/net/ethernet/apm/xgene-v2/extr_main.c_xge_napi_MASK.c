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
struct xge_pdata {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*,int) ; 
 struct xge_pdata* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xge_pdata*) ; 
 int FUNC3 (struct net_device*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct napi_struct *napi, const int budget)
{
	struct net_device *ndev = napi->dev;
	struct xge_pdata *pdata;
	int processed;

	pdata = FUNC1(ndev);

	FUNC4(ndev);
	processed = FUNC3(ndev, budget);

	if (processed < budget) {
		FUNC0(napi, processed);
		FUNC2(pdata);
	}

	return processed;
}