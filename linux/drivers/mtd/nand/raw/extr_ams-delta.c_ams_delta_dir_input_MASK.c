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
struct gpio_descs {int ndescs; int /*<<< orphan*/ * desc; } ;
struct ams_delta_nand {int data_in; struct gpio_descs* data_gpiods; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ams_delta_nand *priv)
{
	struct gpio_descs *data_gpiods = priv->data_gpiods;
	int i;

	for (i = 0; i < data_gpiods->ndescs; i++)
		FUNC0(data_gpiods->desc[i]);

	priv->data_in = true;
}