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
struct cosa_data {int /*<<< orphan*/  lock; int /*<<< orphan*/  dma; scalar_t__ rxtx; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXBIT ; 
 int /*<<< orphan*/  TXBIT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct cosa_data *cosa)
{
	unsigned long flags, flags1;
	char *s = "(probably) IRQ";

	if (FUNC11(RXBIT, &cosa->rxtx))
		s = "RX DMA";
	if (FUNC11(TXBIT, &cosa->rxtx))
		s = "TX DMA";

	FUNC6("%s: %s timeout - restarting\n", cosa->name, s);
	FUNC9(&cosa->lock, flags);
	cosa->rxtx = 0;

	flags1 = FUNC0();
	FUNC5(cosa->dma);
	FUNC1(cosa->dma);
	FUNC8(flags1);

	/* FIXME: Anything else? */
	FUNC12(100);
	FUNC4(cosa, 0);
	FUNC12(100);
	(void) FUNC2(cosa);
	FUNC12(100);
	FUNC3(cosa, 0);
	FUNC12(100);
	FUNC7(cosa);
	FUNC10(&cosa->lock, flags);
}