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
struct filer_table {int dummy; } ;
struct ethtool_tcpip4_spec {int /*<<< orphan*/  tos; int /*<<< orphan*/  psrc; int /*<<< orphan*/  pdst; int /*<<< orphan*/  ip4dst; int /*<<< orphan*/  ip4src; } ;

/* Variables and functions */
 int /*<<< orphan*/  RQFCR_PID_DIA ; 
 int /*<<< orphan*/  RQFCR_PID_DPT ; 
 int /*<<< orphan*/  RQFCR_PID_SIA ; 
 int /*<<< orphan*/  RQFCR_PID_SPT ; 
 int /*<<< orphan*/  RQFCR_PID_TOS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct filer_table*) ; 

__attribute__((used)) static void FUNC3(struct ethtool_tcpip4_spec *value,
			      struct ethtool_tcpip4_spec *mask,
			      struct filer_table *tab)
{
	FUNC2(FUNC1(value->ip4src),
			   FUNC1(mask->ip4src),
			   RQFCR_PID_SIA, tab);
	FUNC2(FUNC1(value->ip4dst),
			   FUNC1(mask->ip4dst),
			   RQFCR_PID_DIA, tab);
	FUNC2(FUNC0(value->pdst),
			   FUNC0(mask->pdst),
			   RQFCR_PID_DPT, tab);
	FUNC2(FUNC0(value->psrc),
			   FUNC0(mask->psrc),
			   RQFCR_PID_SPT, tab);
	FUNC2(value->tos, mask->tos, RQFCR_PID_TOS, tab);
}