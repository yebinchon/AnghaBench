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
struct gs_tx_context {unsigned int echo_id; } ;
struct gs_can {int /*<<< orphan*/  tx_ctx_lock; struct gs_tx_context* tx_context; } ;

/* Variables and functions */
 unsigned int GS_MAX_TX_URBS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct gs_tx_context *FUNC2(struct gs_can *dev,
					       unsigned int id)
{
	unsigned long flags;

	if (id < GS_MAX_TX_URBS) {
		FUNC0(&dev->tx_ctx_lock, flags);
		if (dev->tx_context[id].echo_id == id) {
			FUNC1(&dev->tx_ctx_lock, flags);
			return &dev->tx_context[id];
		}
		FUNC1(&dev->tx_ctx_lock, flags);
	}
	return NULL;
}