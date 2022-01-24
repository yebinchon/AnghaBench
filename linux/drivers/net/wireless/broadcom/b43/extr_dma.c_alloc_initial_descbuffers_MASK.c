#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct b43_dmaring {int nr_slots; int used_slots; int /*<<< orphan*/  rx_buffersize; TYPE_2__* ops; TYPE_1__* dev; } ;
struct b43_dmadesc_meta {int /*<<< orphan*/  skb; int /*<<< orphan*/  dmaaddr; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct TYPE_4__ {struct b43_dmadesc_generic* (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct b43_dmaring*,struct b43_dmadesc_generic*,struct b43_dmadesc_meta*,int /*<<< orphan*/ ) ; 
 struct b43_dmadesc_generic* FUNC4 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 struct b43_dmadesc_generic* FUNC5 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_dmaring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct b43_dmaring *ring)
{
	int i, err = -ENOMEM;
	struct b43_dmadesc_generic *desc;
	struct b43_dmadesc_meta *meta;

	for (i = 0; i < ring->nr_slots; i++) {
		desc = ring->ops->idx2desc(ring, i, &meta);

		err = FUNC3(ring, desc, meta, GFP_KERNEL);
		if (err) {
			FUNC0(ring->dev->wl,
			       "Failed to allocate initial descbuffers\n");
			goto err_unwind;
		}
	}
	FUNC2();
	ring->used_slots = ring->nr_slots;
	err = 0;
      out:
	return err;

      err_unwind:
	for (i--; i >= 0; i--) {
		desc = ring->ops->idx2desc(ring, i, &meta);

		FUNC6(ring, meta->dmaaddr, ring->rx_buffersize, 0);
		FUNC1(meta->skb);
	}
	goto out;
}