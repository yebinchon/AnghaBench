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
struct mlxsw_reg_info {scalar_t__ id; int /*<<< orphan*/  len; } ;
struct mlxsw_core {TYPE_1__* bus_info; } ;
typedef  enum mlxsw_emad_op_tlv_status { ____Placeholder_mlxsw_emad_op_tlv_status } mlxsw_emad_op_tlv_status ;
typedef  enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MLXSW_EMAD_MAX_RETRY ; 
 int MLXSW_EMAD_OP_TLV_LEN ; 
 scalar_t__ MLXSW_REG_MRSR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlxsw_core*,int,char*,char*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_core*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct mlxsw_reg_info const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct mlxsw_reg_info const*,char*) ; 
 int FUNC11 (char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 

__attribute__((used)) static int FUNC14(struct mlxsw_core *mlxsw_core,
				     const struct mlxsw_reg_info *reg,
				     char *payload,
				     enum mlxsw_core_reg_access_type type)
{
	enum mlxsw_emad_op_tlv_status status;
	int err, n_retry;
	bool reset_ok;
	char *in_mbox, *out_mbox, *tmp;

	FUNC0(mlxsw_core->bus_info->dev, "Reg cmd access (reg_id=%x(%s),type=%s)\n",
		reg->id, FUNC13(reg->id),
		FUNC6(type));

	in_mbox = FUNC4();
	if (!in_mbox)
		return -ENOMEM;

	out_mbox = FUNC4();
	if (!out_mbox) {
		err = -ENOMEM;
		goto free_in_mbox;
	}

	FUNC9(in_mbox, reg, type,
			       FUNC7(mlxsw_core));
	tmp = in_mbox + MLXSW_EMAD_OP_TLV_LEN * sizeof(u32);
	FUNC10(tmp, reg, payload);

	/* There is a special treatment needed for MRSR (reset) register.
	 * The command interface will return error after the command
	 * is executed, so tell the lower layer to expect it
	 * and cope accordingly.
	 */
	reset_ok = reg->id == MLXSW_REG_MRSR_ID;

	n_retry = 0;
retry:
	err = FUNC3(mlxsw_core, reset_ok, in_mbox, out_mbox);
	if (!err) {
		err = FUNC11(out_mbox, &status);
		if (err) {
			if (err == -EAGAIN && n_retry++ < MLXSW_EMAD_MAX_RETRY)
				goto retry;
			FUNC1(mlxsw_core->bus_info->dev, "Reg cmd access status failed (status=%x(%s))\n",
				status, FUNC8(status));
		}
	}

	if (!err)
		FUNC2(payload, FUNC12(out_mbox),
		       reg->len);

	FUNC5(out_mbox);
free_in_mbox:
	FUNC5(in_mbox);
	if (err)
		FUNC1(mlxsw_core->bus_info->dev, "Reg cmd access failed (reg_id=%x(%s),type=%s)\n",
			reg->id, FUNC13(reg->id),
			FUNC6(type));
	return err;
}