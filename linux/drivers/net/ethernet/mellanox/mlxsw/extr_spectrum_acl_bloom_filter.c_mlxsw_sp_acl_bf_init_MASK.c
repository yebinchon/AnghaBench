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
struct mlxsw_sp_acl_bf {unsigned int bank_size; int /*<<< orphan*/  lock; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_MAX_BF_LOG ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct mlxsw_sp_acl_bf* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_acl_bf* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  refcnt ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_bf*,int /*<<< orphan*/ ,unsigned int) ; 

struct mlxsw_sp_acl_bf *
FUNC6(struct mlxsw_sp *mlxsw_sp, unsigned int num_erp_banks)
{
	struct mlxsw_sp_acl_bf *bf;
	unsigned int bf_bank_size;

	if (!FUNC2(mlxsw_sp->core, ACL_MAX_BF_LOG))
		return FUNC0(-EIO);

	/* Bloom filter size per erp_table_bank
	 * is 2^ACL_MAX_BF_LOG
	 */
	bf_bank_size = 1 << FUNC1(mlxsw_sp->core, ACL_MAX_BF_LOG);
	bf = FUNC3(FUNC5(bf, refcnt, bf_bank_size * num_erp_banks),
		     GFP_KERNEL);
	if (!bf)
		return FUNC0(-ENOMEM);

	bf->bank_size = bf_bank_size;
	FUNC4(&bf->lock);

	return bf;
}