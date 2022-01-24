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
struct mlxsw_sp_vr {int dummy; } ;
struct mlxsw_sp_fib_node {int dummy; } ;
struct mlxsw_sp_fib {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlxsw_sp_fib_node* FUNC0 (struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_fib_node* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct mlxsw_sp_vr*) ; 
 struct mlxsw_sp_fib_node* FUNC3 (struct mlxsw_sp_fib*,void const*,size_t,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_fib_node*) ; 
 int FUNC5 (struct mlxsw_sp*,struct mlxsw_sp_fib_node*,struct mlxsw_sp_fib*) ; 
 struct mlxsw_sp_fib_node* FUNC6 (struct mlxsw_sp_fib*,void const*,size_t,unsigned char) ; 
 struct mlxsw_sp_fib* FUNC7 (struct mlxsw_sp_vr*,int) ; 
 struct mlxsw_sp_vr* FUNC8 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,struct mlxsw_sp_vr*) ; 

__attribute__((used)) static struct mlxsw_sp_fib_node *
FUNC10(struct mlxsw_sp *mlxsw_sp, u32 tb_id, const void *addr,
		      size_t addr_len, unsigned char prefix_len,
		      enum mlxsw_sp_l3proto proto)
{
	struct mlxsw_sp_fib_node *fib_node;
	struct mlxsw_sp_fib *fib;
	struct mlxsw_sp_vr *vr;
	int err;

	vr = FUNC8(mlxsw_sp, tb_id, NULL);
	if (FUNC2(vr))
		return FUNC0(vr);
	fib = FUNC7(vr, proto);

	fib_node = FUNC6(fib, addr, addr_len, prefix_len);
	if (fib_node)
		return fib_node;

	fib_node = FUNC3(fib, addr, addr_len, prefix_len);
	if (!fib_node) {
		err = -ENOMEM;
		goto err_fib_node_create;
	}

	err = FUNC5(mlxsw_sp, fib_node, fib);
	if (err)
		goto err_fib_node_init;

	return fib_node;

err_fib_node_init:
	FUNC4(fib_node);
err_fib_node_create:
	FUNC9(mlxsw_sp, vr);
	return FUNC1(err);
}