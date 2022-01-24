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
typedef  int /*<<< orphan*/  u16 ;
struct fsl_mc_io {int dummy; } ;
struct fsl_mc_command {scalar_t__ params; int /*<<< orphan*/  header; int /*<<< orphan*/  member_0; } ;
struct dpni_cmd_remove_mac_addr {int /*<<< orphan*/ * mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_CMDID_REMOVE_MAC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fsl_mc_io*,struct fsl_mc_command*) ; 

int FUNC2(struct fsl_mc_io *mc_io,
			 u32 cmd_flags,
			 u16 token,
			 const u8 mac_addr[6])
{
	struct fsl_mc_command cmd = { 0 };
	struct dpni_cmd_remove_mac_addr *cmd_params;
	int i;

	/* prepare command */
	cmd.header = FUNC0(DPNI_CMDID_REMOVE_MAC_ADDR,
					  cmd_flags,
					  token);
	cmd_params = (struct dpni_cmd_remove_mac_addr *)cmd.params;
	for (i = 0; i < 6; i++)
		cmd_params->mac_addr[i] = mac_addr[5 - i];

	/* send command to mc*/
	return FUNC1(mc_io, &cmd);
}