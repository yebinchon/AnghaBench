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
struct hwrm_port_qstats_input {void* rx_stat_host_addr; void* tx_stat_host_addr; int /*<<< orphan*/  port_id; int /*<<< orphan*/  member_0; } ;
struct bnxt_pf_info {int /*<<< orphan*/  port_id; } ;
struct bnxt {int flags; int /*<<< orphan*/  hw_rx_port_stats_map; int /*<<< orphan*/  hw_tx_port_stats_map; struct bnxt_pf_info pf; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int BNXT_FLAG_PORT_STATS ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_QSTATS ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct hwrm_port_qstats_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bnxt*,struct hwrm_port_qstats_input*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bnxt *bp)
{
	int rc;
	struct bnxt_pf_info *pf = &bp->pf;
	struct hwrm_port_qstats_input req = {0};

	if (!(bp->flags & BNXT_FLAG_PORT_STATS))
		return 0;

	FUNC0(bp, &req, HWRM_PORT_QSTATS, -1, -1);
	req.port_id = FUNC1(pf->port_id);
	req.tx_stat_host_addr = FUNC2(bp->hw_tx_port_stats_map);
	req.rx_stat_host_addr = FUNC2(bp->hw_rx_port_stats_map);
	rc = FUNC3(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	return rc;
}