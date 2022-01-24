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
struct mcs7830_data {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIF_REG_CONFIG ; 
 struct mcs7830_data* FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct usbnet *dev)
{
	/* implementation specific to data->config
           (argument needs to be heap-based anyway - USB DMA!) */
	struct mcs7830_data *data = FUNC0(dev);
	FUNC1(dev, HIF_REG_CONFIG, 1, &data->config);
}