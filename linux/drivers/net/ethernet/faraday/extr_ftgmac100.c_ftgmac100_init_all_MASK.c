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
struct ftgmac100 {scalar_t__ base; int /*<<< orphan*/  netdev; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTGMAC100_INT_ALL ; 
 scalar_t__ FTGMAC100_OFFSET_IER ; 
 int FUNC0 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftgmac100*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ftgmac100 *priv, bool ignore_alloc_err)
{
	int err = 0;

	/* Re-init descriptors (adjust queue sizes) */
	FUNC3(priv);

	/* Realloc rx descriptors */
	err = FUNC0(priv);
	if (err && !ignore_alloc_err)
		return err;

	/* Reinit and restart HW */
	FUNC2(priv);
	FUNC1(priv);
	FUNC4(priv);

	/* Re-enable the device */
	FUNC6(&priv->napi);
	FUNC7(priv->netdev);

	/* Enable all interrupts */
	FUNC5(FTGMAC100_INT_ALL, priv->base + FTGMAC100_OFFSET_IER);

	return err;
}