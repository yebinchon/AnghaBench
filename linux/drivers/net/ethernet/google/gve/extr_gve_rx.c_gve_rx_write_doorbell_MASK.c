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
typedef  size_t u32 ;
struct gve_rx_ring {int /*<<< orphan*/  fill_cnt; TYPE_1__* q_resources; } ;
struct gve_priv {int /*<<< orphan*/ * db_bar2; } ;
struct TYPE_2__ {int /*<<< orphan*/  db_index; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct gve_priv *priv, struct gve_rx_ring *rx)
{
	u32 db_idx = FUNC0(rx->q_resources->db_index);

	FUNC1(rx->fill_cnt, &priv->db_bar2[db_idx]);
}