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
struct sk_buff {int dummy; } ;
struct mlxsw_reg_trans {int /*<<< orphan*/  cb_priv; TYPE_1__* reg; int /*<<< orphan*/  (* cb ) (struct mlxsw_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  emad_status; int /*<<< orphan*/  active; } ;
struct mlxsw_core {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_reg_trans*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_core*,struct mlxsw_reg_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mlxsw_core *mlxsw_core,
					struct mlxsw_reg_trans *trans,
					struct sk_buff *skb)
{
	int err;

	if (!FUNC0(&trans->active))
		return;

	err = FUNC2(skb, &trans->emad_status);
	if (err == -EAGAIN) {
		FUNC5(mlxsw_core, trans);
	} else {
		if (err == 0) {
			char *op_tlv = FUNC1(skb);

			if (trans->cb)
				trans->cb(mlxsw_core,
					  FUNC3(op_tlv),
					  trans->reg->len, trans->cb_priv);
		}
		FUNC4(trans, err);
	}
}