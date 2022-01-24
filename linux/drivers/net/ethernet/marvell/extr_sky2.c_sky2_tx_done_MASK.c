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
typedef  int /*<<< orphan*/  u16 ;
struct sky2_port {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAX_SKB_TX_LE ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sky2_port*) ; 

__attribute__((used)) static inline void FUNC5(struct net_device *dev, u16 last)
{
	struct sky2_port *sky2 = FUNC0(dev);

	if (FUNC1(dev)) {
		FUNC3(sky2, last);

		/* Wake unless it's detached, and called e.g. from sky2_close() */
		if (FUNC4(sky2) > MAX_SKB_TX_LE + 4)
			FUNC2(dev);
	}
}