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
struct gfar_extra_stats {int /*<<< orphan*/  rx_alloc_err; } ;
struct gfar_private {struct gfar_extra_stats extra_stats; } ;
struct gfar_priv_rx_q {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct gfar_private* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gfar_priv_rx_q *rx_queue)
{
	struct gfar_private *priv = FUNC2(rx_queue->ndev);
	struct gfar_extra_stats *estats = &priv->extra_stats;

	FUNC1(rx_queue->ndev, "Can't alloc RX buffers\n");
	FUNC0(&estats->rx_alloc_err);
}