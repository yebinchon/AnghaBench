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
struct usbnet {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int /*<<< orphan*/  eee_active; int /*<<< orphan*/  eee_enabled; } ;
struct ax88179_data {int /*<<< orphan*/  eee_active; int /*<<< orphan*/  eee_enabled; } ;

/* Variables and functions */
 int FUNC0 (struct usbnet*,struct ethtool_eee*) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *net, struct ethtool_eee *edata)
{
	struct usbnet *dev = FUNC1(net);
	struct ax88179_data *priv = (struct ax88179_data *)dev->data;

	edata->eee_enabled = priv->eee_enabled;
	edata->eee_active = priv->eee_active;

	return FUNC0(dev, edata);
}