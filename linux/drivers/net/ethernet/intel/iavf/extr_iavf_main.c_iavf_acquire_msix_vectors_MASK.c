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
struct iavf_adapter {int num_msix_vectors; int /*<<< orphan*/ * msix_entries; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MIN_MSIX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int
FUNC3(struct iavf_adapter *adapter, int vectors)
{
	int err, vector_threshold;

	/* We'll want at least 3 (vector_threshold):
	 * 0) Other (Admin Queue and link, mostly)
	 * 1) TxQ[0] Cleanup
	 * 2) RxQ[0] Cleanup
	 */
	vector_threshold = MIN_MSIX_COUNT;

	/* The more we get, the more we will assign to Tx/Rx Cleanup
	 * for the separate queues...where Rx Cleanup >= Tx Cleanup.
	 * Right now, we simply care about how many we'll get; we'll
	 * set them up later while requesting irq's.
	 */
	err = FUNC2(adapter->pdev, adapter->msix_entries,
				    vector_threshold, vectors);
	if (err < 0) {
		FUNC0(&adapter->pdev->dev, "Unable to allocate MSI-X interrupts\n");
		FUNC1(adapter->msix_entries);
		adapter->msix_entries = NULL;
		return err;
	}

	/* Adjust for only the vectors we'll use, which is minimum
	 * of max_msix_q_vectors + NONQ_VECS, or the number of
	 * vectors we were allocated.
	 */
	adapter->num_msix_vectors = err;
	return 0;
}