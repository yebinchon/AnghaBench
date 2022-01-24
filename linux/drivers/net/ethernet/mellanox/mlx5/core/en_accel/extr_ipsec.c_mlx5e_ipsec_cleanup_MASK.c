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
struct mlx5e_priv {struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int /*<<< orphan*/  halloc; int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_ipsec*) ; 

void FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5e_ipsec *ipsec = priv->ipsec;

	if (!ipsec)
		return;

	FUNC1(ipsec->wq);
	FUNC0(ipsec->wq);

	FUNC2(&ipsec->halloc);
	FUNC3(ipsec);
	priv->ipsec = NULL;
}