#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gfar_private {int /*<<< orphan*/  errata; TYPE_1__* ofdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_ERRATA_A002 ; 
 int /*<<< orphan*/  PVR_VER_E500V1 ; 
 int /*<<< orphan*/  PVR_VER_E500V2 ; 
 int /*<<< orphan*/  FUNC0 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct gfar_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gfar_private *priv)
{
	struct device *dev = &priv->ofdev->dev;

	/* no plans to fix */
	priv->errata |= GFAR_ERRATA_A002;

#ifdef CONFIG_PPC
	if (pvr_version_is(PVR_VER_E500V1) || pvr_version_is(PVR_VER_E500V2))
		__gfar_detect_errata_85xx(priv);
	else /* non-mpc85xx parts, i.e. e300 core based */
		__gfar_detect_errata_83xx(priv);
#endif

	if (priv->errata)
		FUNC2(dev, "enabled errata workarounds, flags: 0x%x\n",
			 priv->errata);
}