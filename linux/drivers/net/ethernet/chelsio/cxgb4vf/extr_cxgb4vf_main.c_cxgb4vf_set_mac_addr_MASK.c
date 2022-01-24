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
struct port_info {int /*<<< orphan*/  xact_addr_filt; int /*<<< orphan*/  viid; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int FUNC0 (struct port_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct port_info* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, void *_addr)
{
	int ret;
	struct sockaddr *addr = _addr;
	struct port_info *pi = FUNC3(dev);

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;

	ret = FUNC0(pi, pi->viid, &pi->xact_addr_filt,
				 addr->sa_data, true);
	if (ret < 0)
		return ret;

	FUNC2(dev->dev_addr, addr->sa_data, dev->addr_len);
	return 0;
}