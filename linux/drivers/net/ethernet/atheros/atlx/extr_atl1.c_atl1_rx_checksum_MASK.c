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
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct rx_return_desc {int pkt_flg; int err_flg; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct atl1_adapter {int /*<<< orphan*/  hw_csum_good; int /*<<< orphan*/  hw_csum_err; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int ERR_FLAG_CODE ; 
 int ERR_FLAG_CRC ; 
 int ERR_FLAG_IP_CHKSUM ; 
 int ERR_FLAG_L4_CHKSUM ; 
 int ERR_FLAG_OV ; 
 int ERR_FLAG_TRUNC ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int PACKET_FLAG_ERR ; 
 int PACKET_FLAG_IPV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct atl1_adapter *adapter,
	struct rx_return_desc *rrd, struct sk_buff *skb)
{
	struct pci_dev *pdev = adapter->pdev;

	/*
	 * The L1 hardware contains a bug that erroneously sets the
	 * PACKET_FLAG_ERR and ERR_FLAG_L4_CHKSUM bits whenever a
	 * fragmented IP packet is received, even though the packet
	 * is perfectly valid and its checksum is correct. There's
	 * no way to distinguish between one of these good packets
	 * and a packet that actually contains a TCP/UDP checksum
	 * error, so all we can do is allow it to be handed up to
	 * the higher layers and let it be sorted out there.
	 */

	FUNC3(skb);

	if (FUNC4(rrd->pkt_flg & PACKET_FLAG_ERR)) {
		if (rrd->err_flg & (ERR_FLAG_CRC | ERR_FLAG_TRUNC |
					ERR_FLAG_CODE | ERR_FLAG_OV)) {
			adapter->hw_csum_err++;
			if (FUNC2(adapter))
				FUNC0(KERN_DEBUG, &pdev->dev,
					"rx checksum error\n");
			return;
		}
	}

	/* not IPv4 */
	if (!(rrd->pkt_flg & PACKET_FLAG_IPV4))
		/* checksum is invalid, but it's not an IPv4 pkt, so ok */
		return;

	/* IPv4 packet */
	if (FUNC1(!(rrd->err_flg &
		(ERR_FLAG_IP_CHKSUM | ERR_FLAG_L4_CHKSUM)))) {
		skb->ip_summed = CHECKSUM_UNNECESSARY;
		adapter->hw_csum_good++;
		return;
	}
}