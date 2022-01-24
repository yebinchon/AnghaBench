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
typedef  int u32 ;
struct hw_atl_utils_fw_rpc {int dummy; } ;
struct fw2x_msg_wol {int magic_packet_enabled; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  msg_id; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HAL_ATLANTIC_UTILS_FW2X_MSG_WOL ; 
 int HW_ATL_FW2X_CTRL_SLEEP_PROXY ; 
 int HW_ATL_FW2X_CTRL_WOL ; 
 int /*<<< orphan*/  HW_ATL_FW2X_MPI_CONTROL2_ADDR ; 
 int /*<<< orphan*/  aq_fw2x_state2_get ; 
 int FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct aq_hw_s*,int) ; 
 int FUNC3 (struct aq_hw_s*,struct hw_atl_utils_fw_rpc**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fw2x_msg_wol*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct aq_hw_s*,int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct aq_hw_s *self, u8 *mac)
{
	struct hw_atl_utils_fw_rpc *rpc = NULL;
	struct fw2x_msg_wol *msg = NULL;
	u32 mpi_opts;
	int err = 0;
	u32 val;

	err = FUNC3(self, &rpc);
	if (err < 0)
		goto err_exit;

	msg = (struct fw2x_msg_wol *)rpc;

	FUNC5(msg, 0, sizeof(*msg));

	msg->msg_id = HAL_ATLANTIC_UTILS_FW2X_MSG_WOL;
	msg->magic_packet_enabled = true;
	FUNC4(msg->hw_addr, mac, ETH_ALEN);

	mpi_opts = FUNC0(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR);
	mpi_opts &= ~(HW_ATL_FW2X_CTRL_SLEEP_PROXY | HW_ATL_FW2X_CTRL_WOL);

	FUNC1(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_opts);

	err = FUNC2(self, sizeof(*msg));
	if (err < 0)
		goto err_exit;

	/* Set bit 0x36C.24 */
	mpi_opts |= HW_ATL_FW2X_CTRL_WOL;
	FUNC1(self, HW_ATL_FW2X_MPI_CONTROL2_ADDR, mpi_opts);

	err = FUNC6(aq_fw2x_state2_get,
					self, val, val & HW_ATL_FW2X_CTRL_WOL,
					1U, 10000U);

err_exit:
	return err;
}