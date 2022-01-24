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
struct virtnet_info {int /*<<< orphan*/  vdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VIRTIO_NET_F_STANDBY ; 
 struct virtnet_info* FUNC0 (struct net_device*) ; 
 int FUNC1 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, char *buf,
				      size_t len)
{
	struct virtnet_info *vi = FUNC0(dev);
	int ret;

	if (!FUNC2(vi->vdev, VIRTIO_NET_F_STANDBY))
		return -EOPNOTSUPP;

	ret = FUNC1(buf, len, "sby");
	if (ret >= len)
		return -EOPNOTSUPP;

	return 0;
}