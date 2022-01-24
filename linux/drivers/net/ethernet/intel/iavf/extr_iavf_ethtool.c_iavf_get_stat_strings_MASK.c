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
typedef  int /*<<< orphan*/  u8 ;
struct net_device {unsigned int num_tx_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  iavf_gstrings_queue_stats ; 
 int /*<<< orphan*/  iavf_gstrings_stats ; 

__attribute__((used)) static void FUNC1(struct net_device *netdev, u8 *data)
{
	unsigned int i;

	FUNC0(&data, iavf_gstrings_stats);

	/* Queues are always allocated in pairs, so we just use num_tx_queues
	 * for both Tx and Rx queues.
	 */
	for (i = 0; i < netdev->num_tx_queues; i++) {
		FUNC0(&data, iavf_gstrings_queue_stats,
				      "tx", i);
		FUNC0(&data, iavf_gstrings_queue_stats,
				      "rx", i);
	}
}