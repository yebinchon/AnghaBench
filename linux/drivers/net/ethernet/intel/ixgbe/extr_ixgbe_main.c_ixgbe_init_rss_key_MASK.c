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
typedef  int /*<<< orphan*/  u32 ;
struct ixgbe_adapter {int /*<<< orphan*/ * rss_key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IXGBE_RSS_KEY_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct ixgbe_adapter *adapter)
{
	u32 *rss_key;

	if (!adapter->rss_key) {
		rss_key = FUNC0(IXGBE_RSS_KEY_SIZE, GFP_KERNEL);
		if (FUNC2(!rss_key))
			return -ENOMEM;

		FUNC1(rss_key, IXGBE_RSS_KEY_SIZE);
		adapter->rss_key = rss_key;
	}

	return 0;
}