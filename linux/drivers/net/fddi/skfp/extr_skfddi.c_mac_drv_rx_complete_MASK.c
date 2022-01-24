#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct sk_buff {unsigned char* data; int /*<<< orphan*/  protocol; } ;
struct TYPE_5__ {struct sk_buff* skb; } ;
struct s_smt_fp_rxd {TYPE_1__ rxd_os; } ;
struct TYPE_6__ {int rx_bytes; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  multicast; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_7__ {TYPE_2__ gen; } ;
struct TYPE_8__ {TYPE_3__ MacStat; int /*<<< orphan*/  dev; } ;
struct s_smc {TYPE_4__ os; } ;
typedef  TYPE_4__ skfddi_priv ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FDDI_MAC_HDR_LEN ; 
 unsigned short FDDI_RCF_LEN_MASK ; 
 unsigned char FDDI_RII ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_LOW_WATERMARK ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,struct s_smt_fp_rxd volatile*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 unsigned short FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

void FUNC10(struct s_smc *smc, volatile struct s_smt_fp_rxd *rxd,
			 int frag_count, int len)
{
	skfddi_priv *bp = &smc->os;
	struct sk_buff *skb;
	unsigned char *virt, *cp;
	unsigned short ri;
	u_int RifLength;

	FUNC6("entering mac_drv_rx_complete (len=%d)\n", len);
	if (frag_count != 1) {	// This is not allowed to happen.

		FUNC7("fddi: Multi-fragment receive!\n");
		goto RequeueRxd;	// Re-use the given RXD(s).

	}
	skb = rxd->rxd_os.skb;
	if (!skb) {
		FUNC6("No skb in rxd\n");
		smc->os.MacStat.gen.rx_errors++;
		goto RequeueRxd;
	}
	virt = skb->data;

	// The DMA mapping was released in dma_complete above.

	FUNC1(skb->data, len);

	/*
	 * FDDI Frame format:
	 * +-------+-------+-------+------------+--------+------------+
	 * | FC[1] | DA[6] | SA[6] | RIF[0..18] | LLC[3] | Data[0..n] |
	 * +-------+-------+-------+------------+--------+------------+
	 *
	 * FC = Frame Control
	 * DA = Destination Address
	 * SA = Source Address
	 * RIF = Routing Information Field
	 * LLC = Logical Link Control
	 */

	// Remove Routing Information Field (RIF), if present.

	if ((virt[1 + 6] & FDDI_RII) == 0)
		RifLength = 0;
	else {
		int n;
// goos: RIF removal has still to be tested
		FUNC6("RIF found\n");
		// Get RIF length from Routing Control (RC) field.
		cp = virt + FDDI_MAC_HDR_LEN;	// Point behind MAC header.

		ri = FUNC5(*((__be16 *) cp));
		RifLength = ri & FDDI_RCF_LEN_MASK;
		if (len < (int) (FDDI_MAC_HDR_LEN + RifLength)) {
			FUNC7("fddi: Invalid RIF.\n");
			goto RequeueRxd;	// Discard the frame.

		}
		virt[1 + 6] &= ~FDDI_RII;	// Clear RII bit.
		// regions overlap

		virt = cp + RifLength;
		for (n = FDDI_MAC_HDR_LEN; n; n--)
			*--virt = *--cp;
		// adjust sbd->data pointer
		FUNC8(skb, RifLength);
		len -= RifLength;
		RifLength = 0;
	}

	// Count statistics.
	smc->os.MacStat.gen.rx_packets++;	// Count indicated receive
						// packets.
	smc->os.MacStat.gen.rx_bytes+=len;	// Count bytes.

	// virt points to header again
	if (virt[1] & 0x01) {	// Check group (multicast) bit.

		smc->os.MacStat.gen.multicast++;
	}

	// deliver frame to system
	rxd->rxd_os.skb = NULL;
	FUNC9(skb, len);
	skb->protocol = FUNC2(skb, bp->dev);

	FUNC4(skb);

	FUNC0(smc, RX_LOW_WATERMARK);
	return;

      RequeueRxd:
	FUNC6("Rx: re-queue RXD.\n");
	FUNC3(smc, rxd, frag_count);
	smc->os.MacStat.gen.rx_errors++;	// Count receive packets
						// not indicated.

}