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
union eth_table_entry {int port; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct nfp_nsp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct nfp_nsp*) ; 
 int NSP_ETH_PORT_LANES_MASK ; 
 int /*<<< orphan*/  NSP_ETH_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (union eth_table_entry*) ; 
 union eth_table_entry* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_nsp*,union eth_table_entry*,unsigned int) ; 
 struct nfp_nsp* FUNC7 (struct nfp_cpp*) ; 
 int FUNC8 (struct nfp_nsp*,union eth_table_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfp_cpp*,char*,unsigned int) ; 

struct nfp_nsp *FUNC10(struct nfp_cpp *cpp, unsigned int idx)
{
	union eth_table_entry *entries;
	struct nfp_nsp *nsp;
	int ret;

	entries = FUNC3(NSP_ETH_TABLE_SIZE, GFP_KERNEL);
	if (!entries)
		return FUNC0(-ENOMEM);

	nsp = FUNC7(cpp);
	if (FUNC1(nsp)) {
		FUNC2(entries);
		return nsp;
	}

	ret = FUNC8(nsp, entries, NSP_ETH_TABLE_SIZE);
	if (ret < 0) {
		FUNC4(cpp, "reading port table failed %d\n", ret);
		goto err;
	}

	if (!(entries[idx].port & NSP_ETH_PORT_LANES_MASK)) {
		FUNC9(cpp, "trying to set port state on disabled port %d\n",
			 idx);
		goto err;
	}

	FUNC6(nsp, entries, idx);
	return nsp;

err:
	FUNC5(nsp);
	FUNC2(entries);
	return FUNC0(-EIO);
}