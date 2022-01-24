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
struct dbdma_cmd {int /*<<< orphan*/  res_count; int /*<<< orphan*/  xfer_status; int /*<<< orphan*/  cmd_dep; int /*<<< orphan*/  phy_addr; int /*<<< orphan*/  req_count; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC2(volatile struct dbdma_cmd *cp,
	     unsigned short cmd, unsigned count, unsigned long addr,
	     unsigned long cmd_dep)
{
	FUNC0(&cp->command, cmd);
	FUNC0(&cp->req_count, count);
	FUNC1(&cp->phy_addr, addr);
	FUNC1(&cp->cmd_dep, cmd_dep);
	FUNC0(&cp->xfer_status, 0);
	FUNC0(&cp->res_count, 0);
}