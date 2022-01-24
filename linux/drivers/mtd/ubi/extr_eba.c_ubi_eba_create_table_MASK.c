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
struct ubi_volume {int dummy; } ;
struct ubi_eba_table {struct ubi_eba_table* entries; int /*<<< orphan*/  pnum; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ubi_eba_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UBI_LEB_UNMAPPED ; 
 int /*<<< orphan*/  FUNC1 (struct ubi_eba_table*) ; 
 struct ubi_eba_table* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 struct ubi_eba_table* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct ubi_eba_table *FUNC4(struct ubi_volume *vol,
					   int nentries)
{
	struct ubi_eba_table *tbl;
	int err = -ENOMEM;
	int i;

	tbl = FUNC3(sizeof(*tbl), GFP_KERNEL);
	if (!tbl)
		return FUNC0(-ENOMEM);

	tbl->entries = FUNC2(nentries, sizeof(*tbl->entries),
				     GFP_KERNEL);
	if (!tbl->entries)
		goto err;

	for (i = 0; i < nentries; i++)
		tbl->entries[i].pnum = UBI_LEB_UNMAPPED;

	return tbl;

err:
	FUNC1(tbl->entries);
	FUNC1(tbl);

	return FUNC0(err);
}