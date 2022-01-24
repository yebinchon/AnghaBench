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
struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_BLOCK 130 
#define  TC_SETUP_QDISC_CBS 129 
#define  TC_SETUP_QDISC_ETF 128 
 int FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct igb_adapter*,struct igb_adapter*,int) ; 
 int /*<<< orphan*/  igb_block_cb_list ; 
 int FUNC1 (struct igb_adapter*,void*) ; 
 int FUNC2 (struct igb_adapter*,void*) ; 
 int /*<<< orphan*/  igb_setup_tc_block_cb ; 
 struct igb_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, enum tc_setup_type type,
			void *type_data)
{
	struct igb_adapter *adapter = FUNC3(dev);

	switch (type) {
	case TC_SETUP_QDISC_CBS:
		return FUNC1(adapter, type_data);
	case TC_SETUP_BLOCK:
		return FUNC0(type_data,
						  &igb_block_cb_list,
						  igb_setup_tc_block_cb,
						  adapter, adapter, true);

	case TC_SETUP_QDISC_ETF:
		return FUNC2(adapter, type_data);

	default:
		return -EOPNOTSUPP;
	}
}