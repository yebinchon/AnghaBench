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
typedef  int u32 ;
struct TYPE_2__ {int* va; } ;
struct wil_ring {int swtail; int swhead; int /*<<< orphan*/  hwtail; TYPE_1__ edma_rx_swtail; } ;
struct wil6210_priv {struct wil_ring ring_rx; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct wil6210_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wil6210_priv*,char*,int,int) ; 
 int FUNC3 (struct wil6210_priv*,struct wil_ring*,int) ; 
 int FUNC4 (struct wil_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct wil6210_priv *wil)
{
	struct wil_ring *ring = &wil->ring_rx;
	u32 next_head;
	int rc = 0;
	ring->swtail = *ring->edma_rx_swtail.va;

	for (; next_head = FUNC4(ring),
	     (next_head != ring->swtail);
	     ring->swhead = next_head) {
		rc = FUNC3(wil, ring, ring->swhead);
		if (FUNC0(rc)) {
			if (rc == -EAGAIN)
				FUNC1(wil, "No free buffer ID found\n");
			else
				FUNC2(wil,
						    "Error %d in refill desc[%d]\n",
						    rc, ring->swhead);
			break;
		}
	}

	/* make sure all writes to descriptors (shared memory) are done before
	 * committing them to HW
	 */
	FUNC6();

	FUNC5(wil, ring->hwtail, ring->swhead);

	return rc;
}