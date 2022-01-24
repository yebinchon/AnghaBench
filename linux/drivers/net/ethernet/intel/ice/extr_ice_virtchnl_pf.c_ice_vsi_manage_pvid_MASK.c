#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct ice_vsi_ctx {int /*<<< orphan*/  info; } ;
struct ice_vsi {int /*<<< orphan*/  info; int /*<<< orphan*/  idx; TYPE_2__* back; } ;
struct TYPE_6__ {int /*<<< orphan*/  sq_last_status; } ;
struct ice_hw {TYPE_3__ adminq; } ;
struct device {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_5__ {struct ice_hw hw; TYPE_1__* pdev; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ice_vsi_ctx*) ; 
 struct ice_vsi_ctx* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_hw*,int /*<<< orphan*/ ,struct ice_vsi_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ice_vsi_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct ice_vsi_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ice_vsi *vsi, u16 vid, bool enable)
{
	struct device *dev = &vsi->back->pdev->dev;
	struct ice_hw *hw = &vsi->back->hw;
	struct ice_vsi_ctx *ctxt;
	enum ice_status status;
	int ret = 0;

	ctxt = FUNC2(dev, sizeof(*ctxt), GFP_KERNEL);
	if (!ctxt)
		return -ENOMEM;

	ctxt->info = vsi->info;
	if (enable)
		FUNC5(ctxt, vid);
	else
		FUNC4(ctxt);

	status = FUNC3(hw, vsi->idx, ctxt, NULL);
	if (status) {
		FUNC0(dev, "update VSI for port VLAN failed, err %d aq_err %d\n",
			 status, hw->adminq.sq_last_status);
		ret = -EIO;
		goto out;
	}

	vsi->info = ctxt->info;
out:
	FUNC1(dev, ctxt);
	return ret;
}