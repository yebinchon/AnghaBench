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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_ipip_entry {int /*<<< orphan*/  ol_dev; int /*<<< orphan*/  ol_lb; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RATR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY ; 
 int /*<<< orphan*/  MLXSW_REG_RATR_TYPE_IPIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ratr ; 

__attribute__((used)) static int
FUNC7(struct mlxsw_sp *mlxsw_sp, u32 adj_index,
				  struct mlxsw_sp_ipip_entry *ipip_entry)
{
	u16 rif_index = FUNC5(ipip_entry->ol_lb);
	__be32 daddr4 = FUNC6(ipip_entry->ol_dev);
	char ratr_pl[MLXSW_REG_RATR_LEN];

	FUNC3(ratr_pl, MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY,
			    true, MLXSW_REG_RATR_TYPE_IPIP,
			    adj_index, rif_index);
	FUNC2(ratr_pl, FUNC1(daddr4));

	return FUNC4(mlxsw_sp->core, FUNC0(ratr), ratr_pl);
}