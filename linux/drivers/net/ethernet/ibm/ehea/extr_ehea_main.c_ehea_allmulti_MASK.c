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
typedef  scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct ehea_port {int allmulti; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_DEREG_BCMC ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct ehea_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct ehea_port* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, int enable)
{
	struct ehea_port *port = FUNC3(dev);
	u64 hret;

	if (!port->allmulti) {
		if (enable) {
			/* Enable ALLMULTI */
			FUNC0(dev);
			hret = FUNC1(port, 0, H_REG_BCMC);
			if (!hret)
				port->allmulti = 1;
			else
				FUNC2(dev,
					   "failed enabling IFF_ALLMULTI\n");
		}
	} else {
		if (!enable) {
			/* Disable ALLMULTI */
			hret = FUNC1(port, 0, H_DEREG_BCMC);
			if (!hret)
				port->allmulti = 0;
			else
				FUNC2(dev,
					   "failed disabling IFF_ALLMULTI\n");
		}
	}
}