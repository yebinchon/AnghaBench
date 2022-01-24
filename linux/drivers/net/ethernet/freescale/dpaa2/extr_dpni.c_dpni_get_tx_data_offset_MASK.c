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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpni_rsp_get_tx_data_offset {int /*<<< orphan*/  data_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_GET_TX_DATA_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC3(struct fsl_mc_io *mc_io,
			    u32 cmd_flags,
			    u16 token,
			    u16 *data_offset)
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_rsp_get_tx_data_offset *rsp_params;
	int err;

	/* prepare command */
	cmd.header = FUNC1(DPNI_CMDID_GET_TX_DATA_OFFSET,
					  cmd_flags,
					  token);

	/* send command to mc*/
	err = FUNC2(mc_io, &cmd);
	if (err)
		return err;

	/* retrieve response parameters */
	rsp_params = (struct dpni_rsp_get_tx_data_offset *)cmd.params;
	*data_offset = FUNC0(rsp_params->data_offset);

	return 0;
}