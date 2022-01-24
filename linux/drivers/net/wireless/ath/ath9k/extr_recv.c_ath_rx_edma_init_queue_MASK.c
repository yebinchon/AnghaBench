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
struct ath_rx_edma {int rx_fifo_hwsize; int /*<<< orphan*/  rx_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ath_rx_edma *rx_edma, int size)
{
	FUNC0(&rx_edma->rx_fifo);
	rx_edma->rx_fifo_hwsize = size;
}