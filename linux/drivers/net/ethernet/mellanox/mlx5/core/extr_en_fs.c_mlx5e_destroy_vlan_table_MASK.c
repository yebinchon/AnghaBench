#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ft; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlx5e_priv *priv)
{
	FUNC0(priv);
	FUNC1(&priv->fs.vlan.ft);
}