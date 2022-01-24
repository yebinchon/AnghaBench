#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  void* u32 ;
struct TYPE_4__ {int cpp_action; scalar_t__ page_size; scalar_t__ page_offset; int /*<<< orphan*/  cpp_token; int /*<<< orphan*/  cpp_target; } ;
struct TYPE_3__ {void* key; } ;
struct nfp_resource_entry {TYPE_2__ region; TYPE_1__ mutex; } ;
struct nfp_resource {int addr; int size; void* cpp_id; int /*<<< orphan*/  mutex; int /*<<< orphan*/  name; } ;
struct nfp_cpp {int dummy; } ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_RESOURCE_ENTRY_NAME_SZ ; 
 int NFP_RESOURCE_TBL_BASE ; 
 int NFP_RESOURCE_TBL_ENTRIES ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_NAME ; 
 int /*<<< orphan*/  NFP_RESOURCE_TBL_TARGET ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp*,int /*<<< orphan*/ ,int,void*) ; 
 int FUNC3 (struct nfp_cpp*,void*,int,struct nfp_resource_entry*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct nfp_cpp *cpp, struct nfp_resource *res)
{
	struct nfp_resource_entry entry;
	u32 cpp_id, key;
	int ret, i;

	cpp_id = FUNC0(NFP_RESOURCE_TBL_TARGET, 3, 0);  /* Atomic read */

	/* Search for a matching entry */
	if (!FUNC5(res->name, NFP_RESOURCE_TBL_NAME)) {
		FUNC4(cpp, "Grabbing device lock not supported\n");
		return -EOPNOTSUPP;
	}
	key = FUNC1(res->name, NFP_RESOURCE_ENTRY_NAME_SZ);

	for (i = 0; i < NFP_RESOURCE_TBL_ENTRIES; i++) {
		u64 addr = NFP_RESOURCE_TBL_BASE +
			sizeof(struct nfp_resource_entry) * i;

		ret = FUNC3(cpp, cpp_id, addr, &entry, sizeof(entry));
		if (ret != sizeof(entry))
			return -EIO;

		if (entry.mutex.key != key)
			continue;

		/* Found key! */
		res->mutex =
			FUNC2(cpp,
					    NFP_RESOURCE_TBL_TARGET, addr, key);
		res->cpp_id = FUNC0(entry.region.cpp_target,
					 entry.region.cpp_action,
					 entry.region.cpp_token);
		res->addr = (u64)entry.region.page_offset << 8;
		res->size = (u64)entry.region.page_size << 8;

		return 0;
	}

	return -ENOENT;
}