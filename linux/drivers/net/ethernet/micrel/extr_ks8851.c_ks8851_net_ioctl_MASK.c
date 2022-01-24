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
struct ks8851_net {int /*<<< orphan*/  mii; } ;
struct ifreq {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct ks8851_net* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *req, int cmd)
{
	struct ks8851_net *ks = FUNC2(dev);

	if (!FUNC3(dev))
		return -EINVAL;

	return FUNC0(&ks->mii, FUNC1(req), cmd, NULL);
}