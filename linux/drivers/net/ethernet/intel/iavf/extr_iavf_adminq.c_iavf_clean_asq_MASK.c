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
struct iavf_adminq_ring {scalar_t__ next_to_clean; scalar_t__ count; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {struct iavf_adminq_ring asq; } ;
struct iavf_hw {TYPE_1__ aq; } ;
struct iavf_asq_cmd_details {scalar_t__ callback; } ;
struct iavf_aq_desc {int dummy; } ;
typedef  int /*<<< orphan*/  (* IAVF_ADMINQ_CALLBACK ) (struct iavf_hw*,struct iavf_aq_desc*) ;

/* Variables and functions */
 struct iavf_aq_desc* FUNC0 (struct iavf_adminq_ring,scalar_t__) ; 
 struct iavf_asq_cmd_details* FUNC1 (struct iavf_adminq_ring,scalar_t__) ; 
 int /*<<< orphan*/  IAVF_DEBUG_AQ_MESSAGE ; 
 scalar_t__ FUNC2 (struct iavf_adminq_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_hw*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct iavf_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC6(struct iavf_hw *hw)
{
	struct iavf_adminq_ring *asq = &hw->aq.asq;
	struct iavf_asq_cmd_details *details;
	u16 ntc = asq->next_to_clean;
	struct iavf_aq_desc desc_cb;
	struct iavf_aq_desc *desc;

	desc = FUNC0(*asq, ntc);
	details = FUNC1(*asq, ntc);
	while (FUNC5(hw, hw->aq.asq.head) != ntc) {
		FUNC3(hw, IAVF_DEBUG_AQ_MESSAGE,
			   "ntc %d head %d.\n", ntc, FUNC5(hw, hw->aq.asq.head));

		if (details->callback) {
			IAVF_ADMINQ_CALLBACK cb_func =
					(IAVF_ADMINQ_CALLBACK)details->callback;
			desc_cb = *desc;
			cb_func(hw, &desc_cb);
		}
		FUNC4((void *)desc, 0, sizeof(struct iavf_aq_desc));
		FUNC4((void *)details, 0,
		       sizeof(struct iavf_asq_cmd_details));
		ntc++;
		if (ntc == asq->count)
			ntc = 0;
		desc = FUNC0(*asq, ntc);
		details = FUNC1(*asq, ntc);
	}

	asq->next_to_clean = ntc;

	return FUNC2(asq);
}