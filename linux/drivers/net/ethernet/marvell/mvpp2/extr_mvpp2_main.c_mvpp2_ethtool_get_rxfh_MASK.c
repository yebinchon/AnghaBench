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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_RSS_HASH_CRC32 ; 
 int FUNC0 (struct mvpp2_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mvpp2_port* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, u32 *indir, u8 *key,
				  u8 *hfunc)
{
	struct mvpp2_port *port = FUNC2(dev);
	int ret = 0;

	if (!FUNC1())
		return -EOPNOTSUPP;

	if (indir)
		ret = FUNC0(port, 0, indir);

	if (hfunc)
		*hfunc = ETH_RSS_HASH_CRC32;

	return ret;
}