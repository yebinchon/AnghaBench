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
struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*,int,int) ; 
 int FUNC2 (struct i40e_pf*,int,int) ; 

int FUNC3(int seid, struct i40e_pf *pf, int pf_q,
			   bool is_xdp, bool enable)
{
	int ret;

	FUNC1(pf, pf_q, enable);

	/* wait for the change to finish */
	ret = FUNC2(pf, pf_q, enable);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "VSI seid %d %sTx ring %d %sable timeout\n",
			 seid, (is_xdp ? "XDP " : ""), pf_q,
			 (enable ? "en" : "dis"));
	}

	return ret;
}