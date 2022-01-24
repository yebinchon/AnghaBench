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
struct ifreq {int dummy; } ;
struct board_info {int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct board_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ifreq *req, int cmd)
{
	struct board_info *dm = FUNC3(dev);

	if (!FUNC2(dev))
		return -EINVAL;

	return FUNC0(&dm->mii, FUNC1(req), cmd, NULL);
}