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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ const ETH_RSS_HASH_CRC32 ; 
 scalar_t__ const ETH_RSS_HASH_NO_CHANGE ; 
 int /*<<< orphan*/  ETH_RXFH_CONTEXT_ALLOC ; 
 int FUNC0 (struct mvpp2_port*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mvpp2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mvpp2_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
					  const u32 *indir, const u8 *key,
					  const u8 hfunc, u32 *rss_context,
					  bool delete)
{
	struct mvpp2_port *port = FUNC4(dev);
	int ret;

	if (!FUNC3())
		return -EOPNOTSUPP;

	if (hfunc != ETH_RSS_HASH_NO_CHANGE && hfunc != ETH_RSS_HASH_CRC32)
		return -EOPNOTSUPP;

	if (key)
		return -EOPNOTSUPP;

	if (delete)
		return FUNC1(port, *rss_context);

	if (*rss_context == ETH_RXFH_CONTEXT_ALLOC) {
		ret = FUNC0(port, rss_context);
		if (ret)
			return ret;
	}

	return FUNC2(port, *rss_context, indir);
}