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
struct cosa_data {int rxbitmap; int txbitmap; int enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  rxtx; } ;

/* Variables and functions */
 int DRIVER_RX_READY ; 
 int DRIVER_TXMAP_MASK ; 
 int DRIVER_TXMAP_SHIFT ; 
 int DRIVER_TX_READY ; 
 int /*<<< orphan*/  SR_RX_INT_ENA ; 
 int /*<<< orphan*/  FUNC0 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct cosa_data *cosa)
{
	unsigned long flags;
	int status;

	FUNC4(&cosa->lock, flags);

	status = (cosa->rxbitmap ? DRIVER_RX_READY : 0)
		| (cosa->txbitmap ? DRIVER_TX_READY : 0)
		| (cosa->txbitmap? ~(cosa->txbitmap<<DRIVER_TXMAP_SHIFT)
			&DRIVER_TXMAP_MASK : 0);
	if (!cosa->rxtx) {
		if (cosa->rxbitmap|cosa->txbitmap) {
			if (!cosa->enabled) {
				FUNC1(cosa, SR_RX_INT_ENA);
#ifdef DEBUG_IO
				debug_status_out(cosa, SR_RX_INT_ENA);
#endif
				cosa->enabled = 1;
			}
		} else if (cosa->enabled) {
			cosa->enabled = 0;
			FUNC1(cosa, 0);
#ifdef DEBUG_IO
			debug_status_out(cosa, 0);
#endif
		}
		FUNC0(cosa, status);
#ifdef DEBUG_IO
		debug_data_cmd(cosa, status);
#endif
	}
	FUNC5(&cosa->lock, flags);
}