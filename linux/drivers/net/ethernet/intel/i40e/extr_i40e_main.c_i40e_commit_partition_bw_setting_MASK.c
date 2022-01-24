#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_9__ {int asq_last_status; } ;
struct TYPE_11__ {int partition_id; TYPE_1__ aq; } ;
struct i40e_pf {TYPE_3__ hw; TYPE_2__* pdev; } ;
typedef  int /*<<< orphan*/  nvm_word ;
typedef  scalar_t__ i40e_status ;
typedef  enum i40e_admin_queue_err { ____Placeholder_i40e_admin_queue_err } i40e_admin_queue_err ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ I40E_NOT_SUPPORTED ; 
 int /*<<< orphan*/  I40E_RESOURCE_READ ; 
 int /*<<< orphan*/  I40E_RESOURCE_WRITE ; 
 int /*<<< orphan*/  I40E_SR_NVM_CONTROL_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

i40e_status FUNC8(struct i40e_pf *pf)
{
	/* Commit temporary BW setting to permanent NVM image */
	enum i40e_admin_queue_err last_aq_status;
	i40e_status ret;
	u16 nvm_word;

	if (pf->hw.partition_id != 1) {
		FUNC0(&pf->pdev->dev,
			 "Commit BW only works on partition 1! This is partition %d",
			 pf->hw.partition_id);
		ret = I40E_NOT_SUPPORTED;
		goto bw_commit_out;
	}

	/* Acquire NVM for read access */
	ret = FUNC1(&pf->hw, I40E_RESOURCE_READ);
	last_aq_status = pf->hw.aq.asq_last_status;
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "Cannot acquire NVM for read access, err %s aq_err %s\n",
			 FUNC6(&pf->hw, ret),
			 FUNC3(&pf->hw, last_aq_status));
		goto bw_commit_out;
	}

	/* Read word 0x10 of NVM - SW compatibility word 1 */
	ret = FUNC2(&pf->hw,
			       I40E_SR_NVM_CONTROL_WORD,
			       0x10, sizeof(nvm_word), &nvm_word,
			       false, NULL);
	/* Save off last admin queue command status before releasing
	 * the NVM
	 */
	last_aq_status = pf->hw.aq.asq_last_status;
	FUNC5(&pf->hw);
	if (ret) {
		FUNC0(&pf->pdev->dev, "NVM read error, err %s aq_err %s\n",
			 FUNC6(&pf->hw, ret),
			 FUNC3(&pf->hw, last_aq_status));
		goto bw_commit_out;
	}

	/* Wait a bit for NVM release to complete */
	FUNC7(50);

	/* Acquire NVM for write access */
	ret = FUNC1(&pf->hw, I40E_RESOURCE_WRITE);
	last_aq_status = pf->hw.aq.asq_last_status;
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "Cannot acquire NVM for write access, err %s aq_err %s\n",
			 FUNC6(&pf->hw, ret),
			 FUNC3(&pf->hw, last_aq_status));
		goto bw_commit_out;
	}
	/* Write it back out unchanged to initiate update NVM,
	 * which will force a write of the shadow (alt) RAM to
	 * the NVM - thus storing the bandwidth values permanently.
	 */
	ret = FUNC4(&pf->hw,
				 I40E_SR_NVM_CONTROL_WORD,
				 0x10, sizeof(nvm_word),
				 &nvm_word, true, 0, NULL);
	/* Save off last admin queue command status before releasing
	 * the NVM
	 */
	last_aq_status = pf->hw.aq.asq_last_status;
	FUNC5(&pf->hw);
	if (ret)
		FUNC0(&pf->pdev->dev,
			 "BW settings NOT SAVED, err %s aq_err %s\n",
			 FUNC6(&pf->hw, ret),
			 FUNC3(&pf->hw, last_aq_status));
bw_commit_out:

	return ret;
}