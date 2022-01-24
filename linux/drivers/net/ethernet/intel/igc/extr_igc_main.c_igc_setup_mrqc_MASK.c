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
typedef  int u32 ;
struct igc_hw {int dummy; } ;
struct igc_adapter {int rss_queues; int rss_indir_tbl_init; int* rss_indir_tbl; int flags; struct igc_hw hw; } ;
typedef  int /*<<< orphan*/  rss_key ;

/* Variables and functions */
 int IGC_FLAG_RSS_FIELD_IPV4_UDP ; 
 int IGC_FLAG_RSS_FIELD_IPV6_UDP ; 
 int /*<<< orphan*/  IGC_MRQC ; 
 int IGC_MRQC_ENABLE_RSS_MQ ; 
 int IGC_MRQC_RSS_FIELD_IPV4 ; 
 int IGC_MRQC_RSS_FIELD_IPV4_TCP ; 
 int IGC_MRQC_RSS_FIELD_IPV4_UDP ; 
 int IGC_MRQC_RSS_FIELD_IPV6 ; 
 int IGC_MRQC_RSS_FIELD_IPV6_TCP ; 
 int IGC_MRQC_RSS_FIELD_IPV6_TCP_EX ; 
 int IGC_MRQC_RSS_FIELD_IPV6_UDP ; 
 int IGC_RETA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IGC_RXCSUM ; 
 int IGC_RXCSUM_CRCOFL ; 
 int IGC_RXCSUM_PCSD ; 
 int /*<<< orphan*/  FUNC1 (struct igc_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct igc_adapter *adapter)
{
	struct igc_hw *hw = &adapter->hw;
	u32 j, num_rx_queues;
	u32 mrqc, rxcsum;
	u32 rss_key[10];

	FUNC2(rss_key, sizeof(rss_key));
	for (j = 0; j < 10; j++)
		FUNC4(FUNC0(j), rss_key[j]);

	num_rx_queues = adapter->rss_queues;

	if (adapter->rss_indir_tbl_init != num_rx_queues) {
		for (j = 0; j < IGC_RETA_SIZE; j++)
			adapter->rss_indir_tbl[j] =
			(j * num_rx_queues) / IGC_RETA_SIZE;
		adapter->rss_indir_tbl_init = num_rx_queues;
	}
	FUNC1(adapter);

	/* Disable raw packet checksumming so that RSS hash is placed in
	 * descriptor on writeback.  No need to enable TCP/UDP/IP checksum
	 * offloads as they are enabled by default
	 */
	rxcsum = FUNC3(IGC_RXCSUM);
	rxcsum |= IGC_RXCSUM_PCSD;

	/* Enable Receive Checksum Offload for SCTP */
	rxcsum |= IGC_RXCSUM_CRCOFL;

	/* Don't need to set TUOFL or IPOFL, they default to 1 */
	FUNC4(IGC_RXCSUM, rxcsum);

	/* Generate RSS hash based on packet types, TCP/UDP
	 * port numbers and/or IPv4/v6 src and dst addresses
	 */
	mrqc = IGC_MRQC_RSS_FIELD_IPV4 |
	       IGC_MRQC_RSS_FIELD_IPV4_TCP |
	       IGC_MRQC_RSS_FIELD_IPV6 |
	       IGC_MRQC_RSS_FIELD_IPV6_TCP |
	       IGC_MRQC_RSS_FIELD_IPV6_TCP_EX;

	if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV4_UDP)
		mrqc |= IGC_MRQC_RSS_FIELD_IPV4_UDP;
	if (adapter->flags & IGC_FLAG_RSS_FIELD_IPV6_UDP)
		mrqc |= IGC_MRQC_RSS_FIELD_IPV6_UDP;

	mrqc |= IGC_MRQC_ENABLE_RSS_MQ;

	FUNC4(IGC_MRQC, mrqc);
}