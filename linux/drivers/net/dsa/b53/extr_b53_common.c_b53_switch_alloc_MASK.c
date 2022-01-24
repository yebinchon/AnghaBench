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
struct dsa_switch {int /*<<< orphan*/ * ops; struct b53_device* priv; } ;
struct device {int dummy; } ;
struct b53_io_ops {int dummy; } ;
struct b53_device {int /*<<< orphan*/  stats_mutex; int /*<<< orphan*/  reg_mutex; struct b53_io_ops const* ops; void* priv; struct dsa_switch* ds; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSA_MAX_PORTS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  b53_switch_ops ; 
 struct b53_device* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct dsa_switch* FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct b53_device *FUNC3(struct device *base,
				    const struct b53_io_ops *ops,
				    void *priv)
{
	struct dsa_switch *ds;
	struct b53_device *dev;

	ds = FUNC1(base, DSA_MAX_PORTS);
	if (!ds)
		return NULL;

	dev = FUNC0(base, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return NULL;

	ds->priv = dev;
	dev->dev = base;

	dev->ds = ds;
	dev->priv = priv;
	dev->ops = ops;
	ds->ops = &b53_switch_ops;
	FUNC2(&dev->reg_mutex);
	FUNC2(&dev->stats_mutex);

	return dev;
}