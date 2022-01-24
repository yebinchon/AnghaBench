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
typedef  union eth_table_entry {int dummy; } eth_table_entry ;
struct nfp_nsp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSP_ETH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_nsp*) ; 
 union eth_table_entry* FUNC1 (struct nfp_nsp*) ; 
 scalar_t__ FUNC2 (struct nfp_nsp*) ; 
 int FUNC3 (struct nfp_nsp*,union eth_table_entry*,int /*<<< orphan*/ ) ; 

int FUNC4(struct nfp_nsp *nsp)
{
	union eth_table_entry *entries = FUNC1(nsp);
	int ret = 1;

	if (FUNC2(nsp)) {
		ret = FUNC3(nsp, entries, NSP_ETH_TABLE_SIZE);
		ret = ret < 0 ? ret : 0;
	}

	FUNC0(nsp);

	return ret;
}