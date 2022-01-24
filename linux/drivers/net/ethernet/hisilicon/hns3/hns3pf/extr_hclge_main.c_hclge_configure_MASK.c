#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int num_pg; int num_tc; scalar_t__ hw_pfc_map; } ;
struct TYPE_5__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  media_type; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct hclge_dev {int tc_max; int fd_en; int pfc_max; int /*<<< orphan*/  affinity_mask; TYPE_4__* pdev; int /*<<< orphan*/  tx_sch_mode; int /*<<< orphan*/  hw_tc_map; TYPE_3__ tm_info; TYPE_2__ hw; int /*<<< orphan*/  fd_active_type; int /*<<< orphan*/  wanted_umv_size; int /*<<< orphan*/  num_rx_desc; int /*<<< orphan*/  num_tx_desc; int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  rss_size_max; scalar_t__ base_tqp_pid; int /*<<< orphan*/  num_vmdq_vport; } ;
struct hclge_cfg {int tc_num; int /*<<< orphan*/  speed_ability; int /*<<< orphan*/  default_speed; int /*<<< orphan*/  umv_space; int /*<<< orphan*/  tqp_desc_num; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  media_type; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  rx_buf_len; int /*<<< orphan*/  rss_size_max; int /*<<< orphan*/  vmdq_vport_num; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGE_FD_RULE_NONE ; 
 int /*<<< orphan*/  HCLGE_FLAG_TC_BASE_SCH_MODE ; 
 int HNAE3_MAX_TC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hclge_dev*,struct hclge_cfg*) ; 
 int /*<<< orphan*/  FUNC10 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct hclge_dev*) ; 
 scalar_t__ FUNC14 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC16(struct hclge_dev *hdev)
{
	struct hclge_cfg cfg;
	unsigned int i;
	int ret;

	ret = FUNC9(hdev, &cfg);
	if (ret) {
		FUNC5(&hdev->pdev->dev, "get mac mode error %d.\n", ret);
		return ret;
	}

	hdev->num_vmdq_vport = cfg.vmdq_vport_num;
	hdev->base_tqp_pid = 0;
	hdev->rss_size_max = cfg.rss_size_max;
	hdev->rx_buf_len = cfg.rx_buf_len;
	FUNC8(hdev->hw.mac.mac_addr, cfg.mac_addr);
	hdev->hw.mac.media_type = cfg.media_type;
	hdev->hw.mac.phy_addr = cfg.phy_addr;
	hdev->num_tx_desc = cfg.tqp_desc_num;
	hdev->num_rx_desc = cfg.tqp_desc_num;
	hdev->tm_info.num_pg = 1;
	hdev->tc_max = cfg.tc_num;
	hdev->tm_info.hw_pfc_map = 0;
	hdev->wanted_umv_size = cfg.umv_space;

	if (FUNC14(hdev)) {
		hdev->fd_en = true;
		hdev->fd_active_type = HCLGE_FD_RULE_NONE;
	}

	ret = FUNC12(cfg.default_speed, &hdev->hw.mac.speed);
	if (ret) {
		FUNC5(&hdev->pdev->dev, "Get wrong speed ret=%d.\n", ret);
		return ret;
	}

	FUNC11(hdev, cfg.speed_ability);

	if ((hdev->tc_max > HNAE3_MAX_TC) ||
	    (hdev->tc_max < 1)) {
		FUNC7(&hdev->pdev->dev, "TC num = %d.\n",
			 hdev->tc_max);
		hdev->tc_max = 1;
	}

	/* Dev does not support DCB */
	if (!FUNC13(hdev)) {
		hdev->tc_max = 1;
		hdev->pfc_max = 0;
	} else {
		hdev->pfc_max = hdev->tc_max;
	}

	hdev->tm_info.num_tc = 1;

	/* Currently not support uncontiuous tc */
	for (i = 0; i < hdev->tm_info.num_tc; i++)
		FUNC15(hdev->hw_tc_map, i, 1);

	hdev->tx_sch_mode = HCLGE_FLAG_TC_BASE_SCH_MODE;

	FUNC10(hdev);

	/* Set the init affinity based on pci func number */
	i = FUNC4(FUNC2(FUNC6(&hdev->pdev->dev)));
	i = i ? FUNC0(hdev->pdev->devfn) % i : 0;
	FUNC3(FUNC1(i, FUNC6(&hdev->pdev->dev)),
			&hdev->affinity_mask);

	return ret;
}