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
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int MVPP22_TX_FIFO_DATA_SIZE_10KB ; 
 int MVPP22_TX_FIFO_DATA_SIZE_3KB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MVPP2_MAX_PORTS ; 
 int MVPP2_TX_FIFO_THRESHOLD_10KB ; 
 int MVPP2_TX_FIFO_THRESHOLD_3KB ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mvpp2 *priv)
{
	int port, size, thrs;

	for (port = 0; port < MVPP2_MAX_PORTS; port++) {
		if (port == 0) {
			size = MVPP22_TX_FIFO_DATA_SIZE_10KB;
			thrs = MVPP2_TX_FIFO_THRESHOLD_10KB;
		} else {
			size = MVPP22_TX_FIFO_DATA_SIZE_3KB;
			thrs = MVPP2_TX_FIFO_THRESHOLD_3KB;
		}
		FUNC2(priv, FUNC0(port), size);
		FUNC2(priv, FUNC1(port), thrs);
	}
}