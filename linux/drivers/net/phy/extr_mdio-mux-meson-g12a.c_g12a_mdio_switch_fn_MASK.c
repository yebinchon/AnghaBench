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
struct g12a_mdio_mux {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MESON_G12A_MDIO_EXTERNAL_ID 129 
#define  MESON_G12A_MDIO_INTERNAL_ID 128 
 struct g12a_mdio_mux* FUNC0 (void*) ; 
 int FUNC1 (struct g12a_mdio_mux*) ; 
 int FUNC2 (struct g12a_mdio_mux*) ; 

__attribute__((used)) static int FUNC3(int current_child, int desired_child,
			       void *data)
{
	struct g12a_mdio_mux *priv = FUNC0(data);

	if (current_child == desired_child)
		return 0;

	switch (desired_child) {
	case MESON_G12A_MDIO_EXTERNAL_ID:
		return FUNC1(priv);
	case MESON_G12A_MDIO_INTERNAL_ID:
		return FUNC2(priv);
	default:
		return -EINVAL;
	}
}