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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {unsigned long long start; unsigned long end; int /*<<< orphan*/  list; int /*<<< orphan*/  cpp_id; void* name; } ;
struct nfp_cpp_area {unsigned long long offset; unsigned long size; TYPE_2__ resource; int /*<<< orphan*/  mutex; int /*<<< orphan*/  kref; int /*<<< orphan*/  refcount; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int /*<<< orphan*/  resource_lock; int /*<<< orphan*/  resource_list; TYPE_1__* op; int /*<<< orphan*/  imb_cat_table; } ;
struct TYPE_3__ {int area_priv_size; int (* area_init ) (struct nfp_cpp_area*,int /*<<< orphan*/ ,unsigned long long,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_cpp_area*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfp_cpp_area* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ *,unsigned long long*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 
 int FUNC10 (struct nfp_cpp_area*,int /*<<< orphan*/ ,unsigned long long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct nfp_cpp_area *
FUNC13(struct nfp_cpp *cpp, u32 dest, const char *name,
			     unsigned long long address, unsigned long size)
{
	struct nfp_cpp_area *area;
	u64 tmp64 = address;
	int err, name_len;

	/* Remap from cpp_island to cpp_target */
	err = FUNC8(dest, tmp64, &dest, &tmp64, cpp->imb_cat_table);
	if (err < 0)
		return NULL;

	address = tmp64;

	if (!name)
		name = "(reserved)";

	name_len = FUNC9(name) + 1;
	area = FUNC5(sizeof(*area) + cpp->op->area_priv_size + name_len,
		       GFP_KERNEL);
	if (!area)
		return NULL;

	area->cpp = cpp;
	area->resource.name = (void *)area + sizeof(*area) +
		cpp->op->area_priv_size;
	FUNC6((char *)area->resource.name, name, name_len);

	area->resource.cpp_id = dest;
	area->resource.start = address;
	area->resource.end = area->resource.start + size - 1;
	FUNC0(&area->resource.list);

	FUNC2(&area->refcount, 0);
	FUNC4(&area->kref);
	FUNC7(&area->mutex);

	if (cpp->op->area_init) {
		int err;

		err = cpp->op->area_init(area, dest, address, size);
		if (err < 0) {
			FUNC3(area);
			return NULL;
		}
	}

	FUNC11(&cpp->resource_lock);
	FUNC1(&cpp->resource_list, &area->resource);
	FUNC12(&cpp->resource_lock);

	area->offset = address;
	area->size = size;

	return area;
}