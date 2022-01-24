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
struct device {int dummy; } ;
struct brcmf_usbdev {int dummy; } ;
struct TYPE_2__ {struct brcmf_usbdev* usb; } ;
struct brcmf_bus {TYPE_1__ bus_priv; } ;

/* Variables and functions */
 struct brcmf_bus* FUNC0 (struct device*) ; 

__attribute__((used)) static struct brcmf_usbdev *FUNC1(struct device *dev)
{
	struct brcmf_bus *bus_if = FUNC0(dev);
	return bus_if->bus_priv.usb;
}