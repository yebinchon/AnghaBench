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
struct ethtool_regs {int /*<<< orphan*/  version; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 struct adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,void*,size_t) ; 
 size_t FUNC3 (struct adapter*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, struct ethtool_regs *regs,
		     void *buf)
{
	struct adapter *adap = FUNC1(dev);
	size_t buf_size;

	buf_size = FUNC3(adap);
	regs->version = FUNC0(adap);
	FUNC2(adap, buf, buf_size);
}