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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; } ;
struct bcm_sysport_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bcm_sysport_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *p)
{
	struct bcm_sysport_priv *priv = FUNC2(dev);
	struct sockaddr *addr = p;

	if (!FUNC0(addr->sa_data))
		return -EINVAL;

	FUNC1(dev->dev_addr, addr->sa_data, dev->addr_len);

	/* interface is disabled, changes to MAC will be reflected on next
	 * open call
	 */
	if (!FUNC3(dev))
		return 0;

	FUNC4(priv, dev->dev_addr);

	return 0;
}