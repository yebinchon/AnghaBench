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
struct net_device {int dummy; } ;

/* Variables and functions */
 int MVPP2_CAUSE_FCS_ERR_MASK ; 
 int MVPP2_CAUSE_RX_FIFO_OVERRUN_MASK ; 
 int MVPP2_CAUSE_TX_FIFO_UNDERRUN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 

__attribute__((used)) static inline void FUNC1(struct net_device *dev, int cause)
{
	if (cause & MVPP2_CAUSE_FCS_ERR_MASK)
		FUNC0(dev, "FCS error\n");
	if (cause & MVPP2_CAUSE_RX_FIFO_OVERRUN_MASK)
		FUNC0(dev, "rx fifo overrun error\n");
	if (cause & MVPP2_CAUSE_TX_FIFO_UNDERRUN_MASK)
		FUNC0(dev, "tx fifo underrun error\n");
}