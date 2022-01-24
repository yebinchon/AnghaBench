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
struct mlx5e_priv {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ESW_OFFLOAD ; 
 int /*<<< orphan*/  INGRESS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
#define  TC_SETUP_CLSFLOWER 129 
#define  TC_SETUP_CLSMATCHALL 128 
 int FUNC1 (struct mlx5e_priv*,void*,unsigned long) ; 
 int FUNC2 (struct mlx5e_priv*,void*) ; 

__attribute__((used)) static int FUNC3(enum tc_setup_type type, void *type_data,
				 void *cb_priv)
{
	unsigned long flags = FUNC0(INGRESS) | FUNC0(ESW_OFFLOAD);
	struct mlx5e_priv *priv = cb_priv;

	switch (type) {
	case TC_SETUP_CLSFLOWER:
		return FUNC1(priv, type_data, flags);
	case TC_SETUP_CLSMATCHALL:
		return FUNC2(priv, type_data);
	default:
		return -EOPNOTSUPP;
	}
}