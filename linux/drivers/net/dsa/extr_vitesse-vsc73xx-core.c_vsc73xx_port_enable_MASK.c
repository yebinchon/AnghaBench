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
struct vsc73xx {int /*<<< orphan*/  dev; } ;
struct phy_device {int dummy; } ;
struct dsa_switch {struct vsc73xx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vsc73xx*,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port,
			       struct phy_device *phy)
{
	struct vsc73xx *vsc = ds->priv;

	FUNC0(vsc->dev, "enable port %d\n", port);
	FUNC1(vsc, port);

	return 0;
}