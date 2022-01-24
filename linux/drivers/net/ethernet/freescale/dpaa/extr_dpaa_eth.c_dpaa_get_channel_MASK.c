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

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int*) ; 
 int rx_pool_channel ; 
 int /*<<< orphan*/  rx_pool_channel_init ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	FUNC1(&rx_pool_channel_init);
	if (!rx_pool_channel) {
		u32 pool;
		int ret;

		ret = FUNC0(&pool);

		if (!ret)
			rx_pool_channel = pool;
	}
	FUNC2(&rx_pool_channel_init);
	if (!rx_pool_channel)
		return -ENOMEM;
	return rx_pool_channel;
}