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
typedef  int /*<<< orphan*/  u8 ;
struct iavf_mac_filter {int add; int remove; int /*<<< orphan*/  list; int /*<<< orphan*/  macaddr; } ;
struct iavf_adapter {int /*<<< orphan*/  aq_required; int /*<<< orphan*/  mac_filter_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IAVF_FLAG_AQ_ADD_MAC_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct iavf_mac_filter* FUNC1 (struct iavf_adapter*,int /*<<< orphan*/  const*) ; 
 struct iavf_mac_filter* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct
iavf_mac_filter *FUNC4(struct iavf_adapter *adapter,
				 const u8 *macaddr)
{
	struct iavf_mac_filter *f;

	if (!macaddr)
		return NULL;

	f = FUNC1(adapter, macaddr);
	if (!f) {
		f = FUNC2(sizeof(*f), GFP_ATOMIC);
		if (!f)
			return f;

		FUNC0(f->macaddr, macaddr);

		FUNC3(&f->list, &adapter->mac_filter_list);
		f->add = true;
		adapter->aq_required |= IAVF_FLAG_AQ_ADD_MAC_FILTER;
	} else {
		f->remove = false;
	}

	return f;
}