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
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  bah; int /*<<< orphan*/  bal; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; int /*<<< orphan*/  head; } ;
struct TYPE_4__ {int /*<<< orphan*/  arq_mutex; TYPE_1__ arq; } ;
struct iavf_hw {TYPE_2__ aq; } ;
typedef  enum iavf_status { ____Placeholder_iavf_status } iavf_status ;

/* Variables and functions */
 int IAVF_ERR_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct iavf_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum iavf_status FUNC4(struct iavf_hw *hw)
{
	enum iavf_status ret_code = 0;

	FUNC1(&hw->aq.arq_mutex);

	if (hw->aq.arq.count == 0) {
		ret_code = IAVF_ERR_NOT_READY;
		goto shutdown_arq_out;
	}

	/* Stop firmware AdminQ processing */
	FUNC3(hw, hw->aq.arq.head, 0);
	FUNC3(hw, hw->aq.arq.tail, 0);
	FUNC3(hw, hw->aq.arq.len, 0);
	FUNC3(hw, hw->aq.arq.bal, 0);
	FUNC3(hw, hw->aq.arq.bah, 0);

	hw->aq.arq.count = 0; /* to indicate uninitialized queue */

	/* free ring buffers */
	FUNC0(hw);

shutdown_arq_out:
	FUNC2(&hw->aq.arq_mutex);
	return ret_code;
}