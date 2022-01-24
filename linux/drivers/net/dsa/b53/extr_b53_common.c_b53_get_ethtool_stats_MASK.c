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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_mib_desc {int size; int /*<<< orphan*/  offset; } ;
struct b53_device {int /*<<< orphan*/  stats_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct b53_mib_desc* FUNC1 (struct b53_device*) ; 
 unsigned int FUNC2 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct dsa_switch *ds, int port, uint64_t *data)
{
	struct b53_device *dev = ds->priv;
	const struct b53_mib_desc *mibs = FUNC1(dev);
	unsigned int mib_size = FUNC2(dev);
	const struct b53_mib_desc *s;
	unsigned int i;
	u64 val = 0;

	if (FUNC5(dev) && port == 5)
		port = 8;

	FUNC6(&dev->stats_mutex);

	for (i = 0; i < mib_size; i++) {
		s = &mibs[i];

		if (s->size == 8) {
			FUNC4(dev, FUNC0(port), s->offset, &val);
		} else {
			u32 val32;

			FUNC3(dev, FUNC0(port), s->offset,
				   &val32);
			val = val32;
		}
		data[i] = (u64)val;
	}

	FUNC7(&dev->stats_mutex);
}