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
struct net_device {int flags; int /*<<< orphan*/  dev_addr; } ;
struct macsec_dev {struct net_device* real_dev; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int IFF_UP ; 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct macsec_dev* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *p)
{
	struct macsec_dev *macsec = FUNC4(dev);
	struct net_device *real_dev = macsec->real_dev;
	struct sockaddr *addr = p;
	int err;

	if (!FUNC3(addr->sa_data))
		return -EADDRNOTAVAIL;

	if (!(dev->flags & IFF_UP))
		goto out;

	err = FUNC0(real_dev, addr->sa_data);
	if (err < 0)
		return err;

	FUNC1(real_dev, dev->dev_addr);

out:
	FUNC2(dev->dev_addr, addr->sa_data);
	return 0;
}