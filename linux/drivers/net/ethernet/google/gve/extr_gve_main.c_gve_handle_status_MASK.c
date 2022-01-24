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
typedef  int u32 ;
struct gve_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int GVE_DEVICE_STATUS_RESET_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 

__attribute__((used)) static void FUNC2(struct gve_priv *priv, u32 status)
{
	if (GVE_DEVICE_STATUS_RESET_MASK & status) {
		FUNC0(&priv->pdev->dev, "Device requested reset.\n");
		FUNC1(priv);
	}
}