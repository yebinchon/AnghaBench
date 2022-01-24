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
typedef  int /*<<< orphan*/  u32 ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bcmgenet_priv *priv, u32 dma_ctrl)
{
	u32 reg;

	reg = FUNC0(priv, DMA_CTRL);
	reg |= dma_ctrl;
	FUNC1(priv, reg, DMA_CTRL);

	reg = FUNC2(priv, DMA_CTRL);
	reg |= dma_ctrl;
	FUNC3(priv, reg, DMA_CTRL);
}