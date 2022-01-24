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
struct b43legacy_dmaring {int nr_slots; int used_slots; int /*<<< orphan*/  rx_buffersize; TYPE_1__* dev; } ;
struct b43legacy_dmadesc_meta {int /*<<< orphan*/  skb; int /*<<< orphan*/  dmaaddr; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct b43legacy_dmadesc32* FUNC3 (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ; 
 int FUNC4 (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,struct b43legacy_dmadesc_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43legacy_dmaring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct b43legacy_dmaring *ring)
{
	int i;
	int err = -ENOMEM;
	struct b43legacy_dmadesc32 *desc;
	struct b43legacy_dmadesc_meta *meta;

	for (i = 0; i < ring->nr_slots; i++) {
		desc = FUNC3(ring, i, &meta);

		err = FUNC4(ring, desc, meta, GFP_KERNEL);
		if (err) {
			FUNC0(ring->dev->wl,
			       "Failed to allocate initial descbuffers\n");
			goto err_unwind;
		}
	}
	FUNC2(); /* all descbuffer setup before next line */
	ring->used_slots = ring->nr_slots;
	err = 0;
out:
	return err;

err_unwind:
	for (i--; i >= 0; i--) {
		desc = FUNC3(ring, i, &meta);

		FUNC5(ring, meta->dmaaddr, ring->rx_buffersize, 0);
		FUNC1(meta->skb);
	}
	goto out;
}