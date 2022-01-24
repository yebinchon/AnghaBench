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
struct rb_root {int dummy; } ;
struct mlx5_fpga_ipsec_rule {int /*<<< orphan*/  node; } ;
struct mlx5_fpga_ipsec {int /*<<< orphan*/  rules_rb_lock; struct rb_root rules_rb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rb_root*) ; 

__attribute__((used)) static inline void FUNC3(struct mlx5_fpga_ipsec *ipsec_dev,
				struct mlx5_fpga_ipsec_rule *rule)
{
	struct rb_root *root = &ipsec_dev->rules_rb;

	FUNC0(&ipsec_dev->rules_rb_lock);
	FUNC2(&rule->node, root);
	FUNC1(&ipsec_dev->rules_rb_lock);
}