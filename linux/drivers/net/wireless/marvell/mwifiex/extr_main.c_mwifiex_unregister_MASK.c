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
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup_if ) (struct mwifiex_adapter*) ;} ;
struct mwifiex_adapter {size_t priv_num; size_t n_matches; struct mwifiex_adapter* regd; struct mwifiex_adapter* nd_info; struct mwifiex_adapter** matches; struct mwifiex_adapter** priv; int /*<<< orphan*/  cmd_timer; TYPE_1__ if_ops; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*) ; 

__attribute__((used)) static int FUNC4(struct mwifiex_adapter *adapter)
{
	s32 i;

	if (adapter->if_ops.cleanup_if)
		adapter->if_ops.cleanup_if(adapter);

	FUNC0(&adapter->cmd_timer);

	/* Free private structures */
	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			FUNC2(adapter->priv[i]);
			FUNC1(adapter->priv[i]);
		}
	}

	if (adapter->nd_info) {
		for (i = 0 ; i < adapter->nd_info->n_matches ; i++)
			FUNC1(adapter->nd_info->matches[i]);
		FUNC1(adapter->nd_info);
		adapter->nd_info = NULL;
	}

	FUNC1(adapter->regd);

	FUNC1(adapter);
	return 0;
}