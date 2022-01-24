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
typedef  int u32 ;
struct lan743x_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DMAC_CMD ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct lan743x_adapter *adapter,
				     int rx_channel)
{
	u32 dmac_cmd = 0;

	dmac_cmd = FUNC3(adapter, DMAC_CMD);
	return FUNC0((dmac_cmd &
				      FUNC1(rx_channel)),
				      (dmac_cmd &
				      FUNC2(rx_channel)));
}