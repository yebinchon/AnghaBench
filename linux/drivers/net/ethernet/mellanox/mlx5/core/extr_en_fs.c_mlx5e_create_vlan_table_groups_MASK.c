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
struct mlx5e_flow_table {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5e_flow_table*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_flow_table *ft)
{
	u32 *in;
	int inlen = FUNC0(create_flow_group_in);
	int err;

	in = FUNC3(inlen, GFP_KERNEL);
	if (!in)
		return -ENOMEM;

	err = FUNC1(ft, in, inlen);

	FUNC2(in);
	return err;
}