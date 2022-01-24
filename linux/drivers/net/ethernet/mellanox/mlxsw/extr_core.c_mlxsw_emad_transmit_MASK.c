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
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct mlxsw_reg_trans {int /*<<< orphan*/  tx_info; int /*<<< orphan*/  active; int /*<<< orphan*/  tx_skb; } ;
struct mlxsw_core {TYPE_1__* driver; } ;
struct TYPE_2__ {scalar_t__ txhdr_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct mlxsw_core*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_reg_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_core*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_core *mlxsw_core,
			       struct mlxsw_reg_trans *trans)
{
	struct sk_buff *skb;
	int err;

	skb = FUNC5(trans->tx_skb, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;

	FUNC6(FUNC4(mlxsw_core), false, 0,
			    skb->data + mlxsw_core->driver->txhdr_len,
			    skb->len - mlxsw_core->driver->txhdr_len);

	FUNC0(&trans->active, 1);
	err = FUNC2(mlxsw_core, skb, &trans->tx_info);
	if (err) {
		FUNC1(skb);
		return err;
	}
	FUNC3(trans);
	return 0;
}