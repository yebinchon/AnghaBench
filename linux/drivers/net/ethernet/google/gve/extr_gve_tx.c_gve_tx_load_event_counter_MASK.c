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
struct gve_tx_ring {TYPE_1__* q_resources; } ;
struct gve_priv {int /*<<< orphan*/ * counter_array; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  counter_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__be32 FUNC2(struct gve_priv *priv,
				 struct gve_tx_ring *tx)
{
	u32 counter_index = FUNC1((tx->q_resources->counter_index));

	return FUNC0(priv->counter_array[counter_index]);
}