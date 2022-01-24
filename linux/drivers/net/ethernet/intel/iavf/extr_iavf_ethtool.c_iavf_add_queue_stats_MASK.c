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
typedef  int /*<<< orphan*/  u64 ;
struct iavf_stats {int dummy; } ;
struct iavf_ring {int /*<<< orphan*/  syncp; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct iavf_stats*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iavf_ring*,struct iavf_stats const*) ; 
 struct iavf_stats* iavf_gstrings_queue_stats ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void
FUNC4(u64 **data, struct iavf_ring *ring)
{
	const unsigned int size = FUNC0(iavf_gstrings_queue_stats);
	const struct iavf_stats *stats = iavf_gstrings_queue_stats;
	unsigned int start;
	unsigned int i;

	/* To avoid invalid statistics values, ensure that we keep retrying
	 * the copy until we get a consistent value according to
	 * u64_stats_fetch_retry_irq. But first, make sure our ring is
	 * non-null before attempting to access its syncp.
	 */
	do {
		start = !ring ? 0 : FUNC2(&ring->syncp);
		for (i = 0; i < size; i++)
			FUNC1(&(*data)[i], ring, &stats[i]);
	} while (ring && FUNC3(&ring->syncp, start));

	/* Once we successfully copy the stats in, update the data pointer */
	*data += size;
}