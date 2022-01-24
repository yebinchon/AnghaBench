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
struct device_driver {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cx25821_alsa_init_callback ; 
 struct device_driver* FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct device_driver*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_bus_type ; 

__attribute__((used)) static int FUNC2(void)
{
	struct device_driver *drv = FUNC0("cx25821", &pci_bus_type);

	return FUNC1(drv, NULL, NULL, cx25821_alsa_init_callback);

}