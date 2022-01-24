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
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int DMAC_CHANNEL_STATE_STOP_PENDING ; 
 int ENODEV ; 
 int FUNC0 (struct lan743x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct lan743x_adapter *adapter,
					     int rx_channel)
{
	int timeout = 100;
	int result = 0;

	while (timeout &&
	       ((result = FUNC0(adapter, rx_channel)) ==
	       DMAC_CHANNEL_STATE_STOP_PENDING)) {
		FUNC1(1000, 20000);
		timeout--;
	}
	if (result == DMAC_CHANNEL_STATE_STOP_PENDING)
		result = -ENODEV;
	return result;
}