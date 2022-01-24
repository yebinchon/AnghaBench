#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iavf_adapter {int aq_required; } ;

/* Variables and functions */
 int IAVF_FLAG_AQ_SET_RSS_KEY ; 
 int IAVF_FLAG_AQ_SET_RSS_LUT ; 
 scalar_t__ FUNC0 (struct iavf_adapter*) ; 
 scalar_t__ FUNC1 (struct iavf_adapter*) ; 
 int FUNC2 (struct iavf_adapter*) ; 
 int FUNC3 (struct iavf_adapter*) ; 

int FUNC4(struct iavf_adapter *adapter)
{

	if (FUNC1(adapter)) {
		adapter->aq_required |= IAVF_FLAG_AQ_SET_RSS_LUT |
					IAVF_FLAG_AQ_SET_RSS_KEY;
		return 0;
	} else if (FUNC0(adapter)) {
		return FUNC2(adapter);
	} else {
		return FUNC3(adapter);
	}
}