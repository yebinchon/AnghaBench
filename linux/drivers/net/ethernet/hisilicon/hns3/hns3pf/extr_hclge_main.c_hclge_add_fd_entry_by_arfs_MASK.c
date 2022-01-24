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
typedef  scalar_t__ u16 ;
struct hnae3_handle {int dummy; } ;
struct hclge_vport {struct hclge_dev* back; } ;
struct hclge_fd_rule_tuples {int dummy; } ;
struct hclge_fd_rule {int location; scalar_t__ queue_id; scalar_t__ flow_id; } ;
struct TYPE_2__ {scalar_t__* rule_num; } ;
struct hclge_dev {scalar_t__ fd_active_type; int /*<<< orphan*/  fd_rule_lock; int /*<<< orphan*/  fd_bmap; TYPE_1__ fd_cfg; } ;
struct flow_keys {int dummy; } ;
typedef  int /*<<< orphan*/  new_tuples ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HCLGE_FD_EP_ACTIVE ; 
 size_t HCLGE_FD_STAGE_1 ; 
 int /*<<< orphan*/  MAX_FD_FILTER_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclge_dev*,size_t,struct hclge_fd_rule*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_fd_rule_tuples*,struct hclge_fd_rule*) ; 
 int FUNC3 (struct hclge_dev*,struct hclge_fd_rule*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_keys*,struct hclge_fd_rule_tuples*) ; 
 struct hclge_fd_rule* FUNC5 (struct hclge_dev*,struct hclge_fd_rule_tuples*) ; 
 struct hclge_vport* FUNC6 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct hclge_dev*) ; 
 struct hclge_fd_rule* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hclge_fd_rule_tuples*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct hnae3_handle *handle, u16 queue_id,
				      u16 flow_id, struct flow_keys *fkeys)
{
	struct hclge_vport *vport = FUNC6(handle);
	struct hclge_fd_rule_tuples new_tuples;
	struct hclge_dev *hdev = vport->back;
	struct hclge_fd_rule *rule;
	u16 tmp_queue_id;
	u16 bit_id;
	int ret;

	if (!FUNC7(hdev))
		return -EOPNOTSUPP;

	FUNC9(&new_tuples, 0, sizeof(new_tuples));
	FUNC4(fkeys, &new_tuples);

	FUNC11(&hdev->fd_rule_lock);

	/* when there is already fd rule existed add by user,
	 * arfs should not work
	 */
	if (hdev->fd_active_type == HCLGE_FD_EP_ACTIVE) {
		FUNC12(&hdev->fd_rule_lock);

		return -EOPNOTSUPP;
	}

	/* check is there flow director filter existed for this flow,
	 * if not, create a new filter for it;
	 * if filter exist with different queue id, modify the filter;
	 * if filter exist with same queue id, do nothing
	 */
	rule = FUNC5(hdev, &new_tuples);
	if (!rule) {
		bit_id = FUNC0(hdev->fd_bmap, MAX_FD_FILTER_NUM);
		if (bit_id >= hdev->fd_cfg.rule_num[HCLGE_FD_STAGE_1]) {
			FUNC12(&hdev->fd_rule_lock);

			return -ENOSPC;
		}

		rule = FUNC8(sizeof(*rule), GFP_ATOMIC);
		if (!rule) {
			FUNC12(&hdev->fd_rule_lock);

			return -ENOMEM;
		}

		FUNC10(bit_id, hdev->fd_bmap);
		rule->location = bit_id;
		rule->flow_id = flow_id;
		rule->queue_id = queue_id;
		FUNC2(&new_tuples, rule);
		ret = FUNC3(hdev, rule);

		FUNC12(&hdev->fd_rule_lock);

		if (ret)
			return ret;

		return rule->location;
	}

	FUNC12(&hdev->fd_rule_lock);

	if (rule->queue_id == queue_id)
		return rule->location;

	tmp_queue_id = rule->queue_id;
	rule->queue_id = queue_id;
	ret = FUNC1(hdev, HCLGE_FD_STAGE_1, rule);
	if (ret) {
		rule->queue_id = tmp_queue_id;
		return ret;
	}

	return rule->location;
}