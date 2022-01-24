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
struct dsa_switch {int /*<<< orphan*/  dev; struct b53_device* priv; } ;
struct b53_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct b53_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void FUNC2(struct dsa_switch *ds, int port)
{
	struct b53_device *dev = ds->priv;

	if (FUNC0(dev, port))
		FUNC1(ds->dev, "fast ageing failed\n");
}