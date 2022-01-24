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
struct platform_device {int dummy; } ;
struct csi2rx_priv {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct csi2rx_priv*) ; 
 struct csi2rx_priv* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct csi2rx_priv *csi2rx = FUNC1(pdev);

	FUNC2(&csi2rx->subdev);
	FUNC0(csi2rx);

	return 0;
}