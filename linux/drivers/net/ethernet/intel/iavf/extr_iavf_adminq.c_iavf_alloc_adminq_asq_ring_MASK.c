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
struct TYPE_3__ {int /*<<< orphan*/  desc_buf; int /*<<< orphan*/  cmd_buf; } ;
struct TYPE_4__ {int num_asq_entries; TYPE_1__ asq; } ;
struct iavf_hw {TYPE_2__ aq; } ;
struct iavf_asq_cmd_details {int dummy; } ;
struct iavf_aq_desc {int dummy; } ;
typedef  enum iavf_status { ____Placeholder_iavf_status } iavf_status ;

/* Variables and functions */
 int /*<<< orphan*/  IAVF_ADMINQ_DESC_ALIGNMENT ; 
 int FUNC0 (struct iavf_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct iavf_hw*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iavf_mem_atq_ring ; 

__attribute__((used)) static enum iavf_status FUNC3(struct iavf_hw *hw)
{
	enum iavf_status ret_code;

	ret_code = FUNC0(hw, &hw->aq.asq.desc_buf,
					 iavf_mem_atq_ring,
					 (hw->aq.num_asq_entries *
					 sizeof(struct iavf_aq_desc)),
					 IAVF_ADMINQ_DESC_ALIGNMENT);
	if (ret_code)
		return ret_code;

	ret_code = FUNC1(hw, &hw->aq.asq.cmd_buf,
					  (hw->aq.num_asq_entries *
					  sizeof(struct iavf_asq_cmd_details)));
	if (ret_code) {
		FUNC2(hw, &hw->aq.asq.desc_buf);
		return ret_code;
	}

	return ret_code;
}