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
struct net_device {int /*<<< orphan*/  dev; } ;
struct grcan_dma {int /*<<< orphan*/  base_handle; int /*<<< orphan*/  base_buf; int /*<<< orphan*/  base_size; } ;
struct grcan_priv {struct grcan_dma dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct grcan_dma*,int /*<<< orphan*/ ,int) ; 
 struct grcan_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct grcan_priv *priv = FUNC2(dev);
	struct grcan_dma *dma = &priv->dma;

	FUNC0(&dev->dev, dma->base_size, dma->base_buf,
			  dma->base_handle);
	FUNC1(dma, 0, sizeof(*dma));
}