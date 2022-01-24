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
struct i40e_vsi {int base_queue; int alloc_queue_pairs; int /*<<< orphan*/  seid; struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i40e_pf*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_vsi*) ; 
 int FUNC4 (struct i40e_pf*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct i40e_vsi *vsi, int queue_pair,
					bool enable)
{
	struct i40e_pf *pf = vsi->back;
	int pf_q, ret = 0;

	pf_q = vsi->base_queue + queue_pair;
	ret = FUNC2(vsi->seid, pf, pf_q,
				     false /*is xdp*/, enable);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "VSI seid %d Tx ring %d %sable timeout\n",
			 vsi->seid, pf_q, (enable ? "en" : "dis"));
		return ret;
	}

	FUNC1(pf, pf_q, enable);
	ret = FUNC4(pf, pf_q, enable);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "VSI seid %d Rx ring %d %sable timeout\n",
			 vsi->seid, pf_q, (enable ? "en" : "dis"));
		return ret;
	}

	/* Due to HW errata, on Rx disable only, the register can
	 * indicate done before it really is. Needs 50ms to be sure
	 */
	if (!enable)
		FUNC5(50);

	if (!FUNC3(vsi))
		return ret;

	ret = FUNC2(vsi->seid, pf,
				     pf_q + vsi->alloc_queue_pairs,
				     true /*is xdp*/, enable);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "VSI seid %d XDP Tx ring %d %sable timeout\n",
			 vsi->seid, pf_q, (enable ? "en" : "dis"));
	}

	return ret;
}