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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ MLX5_CMD_OP_DESTROY_MKEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_in ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *dev, void *in, void *out)
{
	u32 syndrome;
	u8  status;
	u16 opcode;
	u16 op_mod;
	u16 uid;

	FUNC3(out, &status, &syndrome);
	if (!status)
		return 0;

	opcode = FUNC0(mbox_in, in, opcode);
	op_mod = FUNC0(mbox_in, in, op_mod);
	uid    = FUNC0(mbox_in, in, uid);

	if (!uid && opcode != MLX5_CMD_OP_DESTROY_MKEY)
		FUNC6(dev,
			"%s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\n",
			FUNC4(opcode), opcode, op_mod,
			FUNC1(status), status, syndrome);
	else
		FUNC5(dev,
		      "%s(0x%x) op_mod(0x%x) failed, status %s(0x%x), syndrome (0x%x)\n",
		      FUNC4(opcode),
		      opcode, op_mod,
		      FUNC1(status),
		      status,
		      syndrome);

	return FUNC2(status);
}