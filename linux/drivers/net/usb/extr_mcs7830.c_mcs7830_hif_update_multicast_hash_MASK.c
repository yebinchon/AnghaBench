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
struct usbnet {int dummy; } ;
struct mcs7830_data {int /*<<< orphan*/  multi_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_REG_MULTICAST_HASH ; 
 struct mcs7830_data* FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct usbnet *dev)
{
	struct mcs7830_data *data = FUNC0(dev);
	FUNC1(dev, HIF_REG_MULTICAST_HASH,
				sizeof data->multi_filter,
				data->multi_filter);
}