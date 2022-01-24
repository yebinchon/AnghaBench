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
struct hclge_vport {int mps; scalar_t__ vport_id; struct hclge_dev* back; } ;
struct hclge_dev {int mps; int num_alloc_vport; int /*<<< orphan*/  vport_lock; TYPE_2__* pdev; TYPE_1__* vport; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int mps; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  HCLGE_MAC_DEFAULT_FRAME ; 
 int HCLGE_MAC_MAX_FRAME ; 
 int HCLGE_MAC_MIN_FRAME ; 
 int /*<<< orphan*/  HNAE3_DOWN_CLIENT ; 
 int /*<<< orphan*/  HNAE3_UP_CLIENT ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hclge_dev*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct hclge_vport *vport, int new_mtu)
{
	struct hclge_dev *hdev = vport->back;
	int i, max_frm_size, ret;

	max_frm_size = new_mtu + ETH_HLEN + ETH_FCS_LEN + 2 * VLAN_HLEN;
	if (max_frm_size < HCLGE_MAC_MIN_FRAME ||
	    max_frm_size > HCLGE_MAC_MAX_FRAME)
		return -EINVAL;

	max_frm_size = FUNC4(max_frm_size, HCLGE_MAC_DEFAULT_FRAME);
	FUNC5(&hdev->vport_lock);
	/* VF's mps must fit within hdev->mps */
	if (vport->vport_id && max_frm_size > hdev->mps) {
		FUNC6(&hdev->vport_lock);
		return -EINVAL;
	} else if (vport->vport_id) {
		vport->mps = max_frm_size;
		FUNC6(&hdev->vport_lock);
		return 0;
	}

	/* PF's mps must be greater then VF's mps */
	for (i = 1; i < hdev->num_alloc_vport; i++)
		if (max_frm_size < hdev->vport[i].mps) {
			FUNC6(&hdev->vport_lock);
			return -EINVAL;
		}

	FUNC2(hdev, HNAE3_DOWN_CLIENT);

	ret = FUNC3(hdev, max_frm_size);
	if (ret) {
		FUNC0(&hdev->pdev->dev,
			"Change mtu fail, ret =%d\n", ret);
		goto out;
	}

	hdev->mps = max_frm_size;
	vport->mps = max_frm_size;

	ret = FUNC1(hdev);
	if (ret)
		FUNC0(&hdev->pdev->dev,
			"Allocate buffer fail, ret =%d\n", ret);

out:
	FUNC2(hdev, HNAE3_UP_CLIENT);
	FUNC6(&hdev->vport_lock);
	return ret;
}