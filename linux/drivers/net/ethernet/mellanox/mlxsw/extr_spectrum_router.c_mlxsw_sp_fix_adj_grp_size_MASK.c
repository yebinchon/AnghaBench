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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_KVDL_ENTRY_TYPE_ADJ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp,
				     u16 *p_adj_grp_size)
{
	unsigned int alloc_size;
	int err;

	/* Round up the requested group size to the next size supported
	 * by the device and make sure the request can be satisfied.
	 */
	FUNC1(p_adj_grp_size);
	err = FUNC2(mlxsw_sp,
					      MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
					      *p_adj_grp_size, &alloc_size);
	if (err)
		return err;
	/* It is possible the allocation results in more allocated
	 * entries than requested. Try to use as much of them as
	 * possible.
	 */
	FUNC0(p_adj_grp_size, alloc_size);

	return 0;
}