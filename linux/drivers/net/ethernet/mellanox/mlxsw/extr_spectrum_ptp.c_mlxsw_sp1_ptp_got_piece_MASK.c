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
typedef  scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp1_ptp_unmatched {scalar_t__ timestamp; struct sk_buff* skb; } ;
struct mlxsw_sp1_ptp_key {int /*<<< orphan*/  ingress; int /*<<< orphan*/  local_port; } ;
struct mlxsw_sp {TYPE_1__* ptp_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  unmatched_lock; } ;

/* Variables and functions */
 int E2BIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp1_ptp_unmatched*) ; 
 struct mlxsw_sp1_ptp_unmatched* FUNC3 (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,int*) ; 
 int FUNC4 (struct mlxsw_sp*,struct mlxsw_sp1_ptp_unmatched*) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp1_ptp_key key,
				    struct sk_buff *skb, u64 timestamp)
{
	struct mlxsw_sp1_ptp_unmatched *unmatched;
	int length;
	int err;

	FUNC6();

	FUNC8(&mlxsw_sp->ptp_state->unmatched_lock);

	unmatched = FUNC3(mlxsw_sp, key, &length);
	if (skb && unmatched && unmatched->timestamp) {
		unmatched->skb = skb;
	} else if (timestamp && unmatched && unmatched->skb) {
		unmatched->timestamp = timestamp;
	} else {
		/* Either there is no entry to match, or one that is there is
		 * incompatible.
		 */
		if (length < 100)
			err = FUNC5(mlxsw_sp, key,
							   skb, timestamp);
		else
			err = -E2BIG;
		if (err && skb)
			FUNC1(mlxsw_sp, skb,
						    key.local_port,
						    key.ingress, NULL);
		unmatched = NULL;
	}

	if (unmatched) {
		err = FUNC4(mlxsw_sp, unmatched);
		FUNC0(err);
	}

	FUNC9(&mlxsw_sp->ptp_state->unmatched_lock);

	if (unmatched)
		FUNC2(mlxsw_sp, unmatched);

	FUNC7();
}