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
typedef  int /*<<< orphan*/  u32 ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int hena; int /*<<< orphan*/  rss_key_size; scalar_t__ rss_key; TYPE_1__* vf_res; struct iavf_hw hw; } ;
struct TYPE_2__ {int vf_cap_flags; } ;

/* Variables and functions */
 int IAVF_DEFAULT_RSS_HENA ; 
 int IAVF_DEFAULT_RSS_HENA_EXPANDED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*) ; 
 int VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2 ; 
 int FUNC2 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iavf_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iavf_adapter *adapter)
{
	struct iavf_hw *hw = &adapter->hw;
	int ret;

	if (!FUNC1(adapter)) {
		/* Enable PCTYPES for RSS, TCP/UDP with IPv4/IPv6 */
		if (adapter->vf_res->vf_cap_flags &
		    VIRTCHNL_VF_OFFLOAD_RSS_PCTYPE_V2)
			adapter->hena = IAVF_DEFAULT_RSS_HENA_EXPANDED;
		else
			adapter->hena = IAVF_DEFAULT_RSS_HENA;

		FUNC5(hw, FUNC0(0), (u32)adapter->hena);
		FUNC5(hw, FUNC0(1), (u32)(adapter->hena >> 32));
	}

	FUNC3(adapter);
	FUNC4((void *)adapter->rss_key, adapter->rss_key_size);
	ret = FUNC2(adapter);

	return ret;
}