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
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlxsw_sp*,unsigned int*) ; 

__attribute__((used)) static int
FUNC1(void *priv, unsigned int *p_counter_index)
{
	struct mlxsw_sp *mlxsw_sp = priv;

	return FUNC0(mlxsw_sp, p_counter_index);
}