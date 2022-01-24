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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct mlx4_en_priv {int dcbx_cap; } ;
struct dcb_app {void* priority; int /*<<< orphan*/  protocol; void* selector; } ;

/* Variables and functions */
 int DCB_CAP_DCBX_VER_CEE ; 
 int EINVAL ; 
 int FUNC0 (struct net_device*,struct dcb_app*) ; 
 int /*<<< orphan*/  FUNC1 (struct dcb_app*,int /*<<< orphan*/ ,int) ; 
 struct mlx4_en_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, u8 idtype,
				u16 id, u8 up)
{
	struct mlx4_en_priv *priv = FUNC2(netdev);
	struct dcb_app app;

	if (!(priv->dcbx_cap & DCB_CAP_DCBX_VER_CEE))
		return -EINVAL;

	FUNC1(&app, 0, sizeof(struct dcb_app));
	app.selector = idtype;
	app.protocol = id;
	app.priority = up;

	return FUNC0(netdev, &app);
}