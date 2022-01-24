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
struct virtchnl_version_info {scalar_t__ major; scalar_t__ minor; } ;
struct iavf_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cookie_low; int /*<<< orphan*/  cookie_high; } ;
struct iavf_arq_event_info {scalar_t__ msg_buf; TYPE_1__ desc; int /*<<< orphan*/  buf_len; } ;
struct iavf_adapter {struct virtchnl_version_info pf_version; TYPE_2__* pdev; struct iavf_hw hw; } ;
typedef  enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;
typedef  enum iavf_status { ____Placeholder_iavf_status } iavf_status ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IAVF_MAX_AQ_BUF_SIZE ; 
 int VIRTCHNL_OP_VERSION ; 
 scalar_t__ VIRTCHNL_VERSION_MAJOR ; 
 scalar_t__ VIRTCHNL_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct iavf_hw*,struct iavf_arq_event_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct iavf_adapter *adapter)
{
	struct virtchnl_version_info *pf_vvi;
	struct iavf_hw *hw = &adapter->hw;
	struct iavf_arq_event_info event;
	enum virtchnl_ops op;
	enum iavf_status err;

	event.buf_len = IAVF_MAX_AQ_BUF_SIZE;
	event.msg_buf = FUNC3(event.buf_len, GFP_KERNEL);
	if (!event.msg_buf) {
		err = -ENOMEM;
		goto out;
	}

	while (1) {
		err = FUNC1(hw, &event, NULL);
		/* When the AQ is empty, iavf_clean_arq_element will return
		 * nonzero and this loop will terminate.
		 */
		if (err)
			goto out_alloc;
		op =
		    (enum virtchnl_ops)FUNC4(event.desc.cookie_high);
		if (op == VIRTCHNL_OP_VERSION)
			break;
	}


	err = (enum iavf_status)FUNC4(event.desc.cookie_low);
	if (err)
		goto out_alloc;

	if (op != VIRTCHNL_OP_VERSION) {
		FUNC0(&adapter->pdev->dev, "Invalid reply type %d from PF\n",
			op);
		err = -EIO;
		goto out_alloc;
	}

	pf_vvi = (struct virtchnl_version_info *)event.msg_buf;
	adapter->pf_version = *pf_vvi;

	if ((pf_vvi->major > VIRTCHNL_VERSION_MAJOR) ||
	    ((pf_vvi->major == VIRTCHNL_VERSION_MAJOR) &&
	     (pf_vvi->minor > VIRTCHNL_VERSION_MINOR)))
		err = -EIO;

out_alloc:
	FUNC2(event.msg_buf);
out:
	return err;
}