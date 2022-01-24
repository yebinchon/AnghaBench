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
struct qed_ptt {int dummy; } ;
struct qed_ll2_stats {int /*<<< orphan*/  gsi_crcchksm_error; int /*<<< orphan*/  gsi_unsupported_pkt_typ; int /*<<< orphan*/  gsi_invalid_pkt_length; int /*<<< orphan*/  gsi_invalid_hdr; } ;
struct qed_hwfn {int dummy; } ;
struct core_ll2_port_stats {int /*<<< orphan*/  gsi_crcchksm_error; int /*<<< orphan*/  gsi_unsupported_pkt_typ; int /*<<< orphan*/  gsi_invalid_pkt_length; int /*<<< orphan*/  gsi_invalid_hdr; } ;
typedef  int /*<<< orphan*/  port_stats ;

/* Variables and functions */
 scalar_t__ BAR0_MAP_REG_TSDM_RAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct core_ll2_port_stats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ptt*,struct core_ll2_port_stats*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct qed_hwfn *p_hwfn,
				    struct qed_ptt *p_ptt,
				    struct qed_ll2_stats *p_stats)
{
	struct core_ll2_port_stats port_stats;

	FUNC3(&port_stats, 0, sizeof(port_stats));
	FUNC4(p_hwfn, p_ptt, &port_stats,
			BAR0_MAP_REG_TSDM_RAM +
			FUNC2(FUNC1(p_hwfn)),
			sizeof(port_stats));

	p_stats->gsi_invalid_hdr += FUNC0(port_stats.gsi_invalid_hdr);
	p_stats->gsi_invalid_pkt_length +=
	    FUNC0(port_stats.gsi_invalid_pkt_length);
	p_stats->gsi_unsupported_pkt_typ +=
	    FUNC0(port_stats.gsi_unsupported_pkt_typ);
	p_stats->gsi_crcchksm_error +=
	    FUNC0(port_stats.gsi_crcchksm_error);
}