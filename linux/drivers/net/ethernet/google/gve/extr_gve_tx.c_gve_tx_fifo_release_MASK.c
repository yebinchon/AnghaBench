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
struct gve_tx_fifo {scalar_t__ size; int /*<<< orphan*/  base; int /*<<< orphan*/  available; } ;
struct gve_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gve_priv *priv, struct gve_tx_fifo *fifo)
{
	FUNC0(FUNC1(&fifo->available) != fifo->size,
	     "Releasing non-empty fifo");

	FUNC2(fifo->base);
}