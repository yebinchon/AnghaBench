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
 int /*<<< orphan*/  FUNC0 (union eth_table_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_nsp*) ; 
 union eth_table_entry* FUNC3 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_nsp*,int) ; 

void FUNC5(struct nfp_nsp *nsp)
{
	union eth_table_entry *entries = FUNC3(nsp);

	FUNC4(nsp, false);
	FUNC2(nsp);
	FUNC1(nsp);
	FUNC0(entries);
}