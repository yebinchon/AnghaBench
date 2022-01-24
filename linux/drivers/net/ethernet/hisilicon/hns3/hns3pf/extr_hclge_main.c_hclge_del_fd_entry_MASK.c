#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct TYPE_3__ {scalar_t__* rule_num; } ;
struct hclge_dev {int /*<<< orphan*/  fd_rule_lock; TYPE_2__* pdev; TYPE_1__ fd_cfg; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  fs; } ;
struct ethtool_rx_flow_spec {scalar_t__ location; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 size_t HCLGE_FD_STAGE_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hclge_dev*,scalar_t__) ; 
 int FUNC2 (struct hclge_dev*,size_t,int,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct hclge_dev*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct hclge_vport* FUNC4 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct hnae3_handle *handle,
			      struct ethtool_rxnfc *cmd)
{
	struct hclge_vport *vport = FUNC4(handle);
	struct hclge_dev *hdev = vport->back;
	struct ethtool_rx_flow_spec *fs;
	int ret;

	if (!FUNC5(hdev))
		return -EOPNOTSUPP;

	fs = (struct ethtool_rx_flow_spec *)&cmd->fs;

	if (fs->location >= hdev->fd_cfg.rule_num[HCLGE_FD_STAGE_1])
		return -EINVAL;

	if (!FUNC1(hdev, fs->location)) {
		FUNC0(&hdev->pdev->dev,
			"Delete fail, rule %d is inexistent\n", fs->location);
		return -ENOENT;
	}

	ret = FUNC2(hdev, HCLGE_FD_STAGE_1, true, fs->location,
				   NULL, false);
	if (ret)
		return ret;

	FUNC6(&hdev->fd_rule_lock);
	ret = FUNC3(hdev, NULL, fs->location, false);

	FUNC7(&hdev->fd_rule_lock);

	return ret;
}