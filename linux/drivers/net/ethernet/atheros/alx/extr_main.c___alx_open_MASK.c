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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;
struct alx_priv {TYPE_1__ hw; int /*<<< orphan*/  dev; int /*<<< orphan*/  num_rxq; int /*<<< orphan*/  num_txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_ISR ; 
 scalar_t__ ALX_ISR_DIS ; 
 int FUNC0 (struct alx_priv*) ; 
 int FUNC1 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct alx_priv*) ; 
 int FUNC3 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct alx_priv*) ; 
 int FUNC6 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct alx_priv*) ; 
 int FUNC9 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct alx_priv*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct alx_priv *alx, bool resume)
{
	int err;

	err = FUNC3(alx);
	if (err < 0) {
		err = FUNC6(alx);
		if (err)
			return err;
	}

	if (!resume)
		FUNC12(alx->dev);

	err = FUNC0(alx);
	if (err)
		goto out_disable_adv_intr;

	err = FUNC1(alx);
	if (err)
		goto out_free_rings;

	FUNC2(alx);

	err = FUNC9(alx);
	if (err)
		goto out_free_rings;

	/* must be called after alx_request_irq because the chip stops working
	 * if we copy the dma addresses in alx_init_ring_ptrs twice when
	 * requesting msi-x interrupts failed
	 */
	FUNC8(alx);

	FUNC14(alx->dev, alx->num_txq);
	FUNC13(alx->dev, alx->num_rxq);

	/* clear old interrupts */
	FUNC11(&alx->hw, ALX_ISR, ~(u32)ALX_ISR_DIS);

	FUNC7(alx);

	if (!resume)
		FUNC15(alx->dev);

	FUNC10(alx);
	return 0;

out_free_rings:
	FUNC5(alx);
	FUNC4(alx);
out_disable_adv_intr:
	FUNC16(alx->hw.pdev);
	return err;
}