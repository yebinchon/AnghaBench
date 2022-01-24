#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ppp_config {int unit; int ifname_is_set; struct file* file; } ;
struct TYPE_2__ {int index; } ;
struct ppp {TYPE_1__ file; } ;
struct net_device {int /*<<< orphan*/ * rtnl_link_ops; } ;
struct net {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NET_NAME_ENUM ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct ppp* FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net*,struct net_device*,struct ppp_config*) ; 
 int /*<<< orphan*/  ppp_link_ops ; 
 int /*<<< orphan*/  ppp_setup ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct net *net, struct file *file, int *unit)
{
	struct ppp_config conf = {
		.file = file,
		.unit = *unit,
		.ifname_is_set = false,
	};
	struct net_device *dev;
	struct ppp *ppp;
	int err;

	dev = FUNC0(sizeof(struct ppp), "", NET_NAME_ENUM, ppp_setup);
	if (!dev) {
		err = -ENOMEM;
		goto err;
	}
	FUNC1(dev, net);
	dev->rtnl_link_ops = &ppp_link_ops;

	FUNC5();

	err = FUNC4(net, dev, &conf);
	if (err < 0)
		goto err_dev;
	ppp = FUNC3(dev);
	*unit = ppp->file.index;

	FUNC6();

	return 0;

err_dev:
	FUNC6();
	FUNC2(dev);
err:
	return err;
}