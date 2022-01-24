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
typedef  int u32 ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int DESC_INDEX ; 
 int /*<<< orphan*/  DMA_CTRL ; 
 int DMA_EN ; 
 int DMA_RING_BUF_EN_SHIFT ; 
 int /*<<< orphan*/  UMAC_TX_FLUSH ; 
 int FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u32 FUNC6(struct bcmgenet_priv *priv)
{
	u32 reg;
	u32 dma_ctrl;

	/* disable DMA */
	dma_ctrl = 1 << (DESC_INDEX + DMA_RING_BUF_EN_SHIFT) | DMA_EN;
	reg = FUNC2(priv, DMA_CTRL);
	reg &= ~dma_ctrl;
	FUNC3(priv, reg, DMA_CTRL);

	reg = FUNC0(priv, DMA_CTRL);
	reg &= ~dma_ctrl;
	FUNC1(priv, reg, DMA_CTRL);

	FUNC4(priv, 1, UMAC_TX_FLUSH);
	FUNC5(10);
	FUNC4(priv, 0, UMAC_TX_FLUSH);

	return dma_ctrl;
}