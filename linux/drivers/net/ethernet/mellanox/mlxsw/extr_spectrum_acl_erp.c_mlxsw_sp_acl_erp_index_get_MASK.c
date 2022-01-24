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
typedef  scalar_t__ u8 ;
struct mlxsw_sp_acl_erp_table {scalar_t__ num_max_atcam_erps; int /*<<< orphan*/  erp_index_bitmap; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_sp_acl_erp_table *erp_table,
				      u8 *p_index)
{
	u8 index;

	index = FUNC1(erp_table->erp_index_bitmap,
				    erp_table->num_max_atcam_erps);
	if (index < erp_table->num_max_atcam_erps) {
		FUNC0(index, erp_table->erp_index_bitmap);
		*p_index = index;
		return 0;
	}

	return -ENOBUFS;
}