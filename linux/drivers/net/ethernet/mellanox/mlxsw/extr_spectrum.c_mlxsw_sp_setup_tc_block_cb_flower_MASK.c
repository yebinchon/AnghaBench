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
struct mlxsw_sp_acl_block {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_SETUP_CLSFLOWER 129 
#define  TC_SETUP_CLSMATCHALL 128 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_acl_block*) ; 
 int FUNC1 (struct mlxsw_sp_acl_block*,void*) ; 

__attribute__((used)) static int FUNC2(enum tc_setup_type type,
					     void *type_data, void *cb_priv)
{
	struct mlxsw_sp_acl_block *acl_block = cb_priv;

	switch (type) {
	case TC_SETUP_CLSMATCHALL:
		return 0;
	case TC_SETUP_CLSFLOWER:
		if (FUNC0(acl_block))
			return -EOPNOTSUPP;

		return FUNC1(acl_block, type_data);
	default:
		return -EOPNOTSUPP;
	}
}