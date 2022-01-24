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
typedef  int /*<<< orphan*/  u64 ;
struct hcp_query_ehea {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_QUERY_HEA ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u64 FUNC3(const u64 adapter_handle, void *cb_addr)
{
	u64 hret, cb_logaddr;

	cb_logaddr = FUNC0(cb_addr);

	hret = FUNC2(H_QUERY_HEA,
				       adapter_handle,		/* R4 */
				       cb_logaddr,		/* R5 */
				       0, 0, 0, 0, 0);		/* R6-R10 */
#ifdef DEBUG
	ehea_dump(cb_addr, sizeof(struct hcp_query_ehea), "hcp_query_ehea");
#endif
	return hret;
}