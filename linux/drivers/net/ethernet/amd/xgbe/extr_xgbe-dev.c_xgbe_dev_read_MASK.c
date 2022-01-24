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
struct xgbe_ring_desc {int /*<<< orphan*/  desc0; int /*<<< orphan*/  desc3; int /*<<< orphan*/  desc2; int /*<<< orphan*/  desc1; } ;
struct TYPE_4__ {int hdr_len; int len; } ;
struct xgbe_ring_data {TYPE_2__ rx; struct xgbe_ring_desc* rdesc; } ;
struct xgbe_packet_data {int vlan_ctag; int /*<<< orphan*/  errors; int /*<<< orphan*/  attributes; int /*<<< orphan*/  rss_hash_type; int /*<<< orphan*/  rss_hash; } ;
struct xgbe_ring {int cur; int rdesc_count; struct xgbe_packet_data packet_data; } ;
struct TYPE_3__ {int* rxq_bytes; int /*<<< orphan*/ * rxq_packets; int /*<<< orphan*/  rx_vxlan_csum_errors; int /*<<< orphan*/  rx_csum_errors; int /*<<< orphan*/  rx_vxlan_packets; int /*<<< orphan*/  rx_split_header_packets; } ;
struct xgbe_prv_data {TYPE_1__ ext_stats; struct net_device* netdev; } ;
struct xgbe_channel {size_t queue_index; int /*<<< orphan*/  name; struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;
struct net_device {int features; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDA ; 
 int /*<<< orphan*/  CONTEXT ; 
 int /*<<< orphan*/  CONTEXT_NEXT ; 
 int /*<<< orphan*/  CSUM_DONE ; 
 int /*<<< orphan*/  CTXT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  ES ; 
 int /*<<< orphan*/  ETLT ; 
 int /*<<< orphan*/  FD ; 
 int /*<<< orphan*/  FIRST ; 
 int /*<<< orphan*/  FRAME ; 
 int /*<<< orphan*/  HL ; 
 int /*<<< orphan*/  L34T ; 
 int /*<<< orphan*/  LAST ; 
 int /*<<< orphan*/  LD ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  OVT ; 
 int /*<<< orphan*/  OWN ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L3 ; 
 int /*<<< orphan*/  PKT_HASH_TYPE_L4 ; 
 int /*<<< orphan*/  PL ; 
 int /*<<< orphan*/  RSS_HASH ; 
 int /*<<< orphan*/  RSV ; 
#define  RX_DESC3_L34T_IPV4_TCP 133 
#define  RX_DESC3_L34T_IPV4_UDP 132 
#define  RX_DESC3_L34T_IPV4_UNKNOWN 131 
#define  RX_DESC3_L34T_IPV6_TCP 130 
#define  RX_DESC3_L34T_IPV6_UDP 129 
#define  RX_DESC3_L34T_IPV6_UNKNOWN 128 
 int /*<<< orphan*/  RX_NORMAL_DESC0 ; 
 int /*<<< orphan*/  RX_NORMAL_DESC2 ; 
 int /*<<< orphan*/  RX_NORMAL_DESC3 ; 
 int /*<<< orphan*/  RX_PACKET_ATTRIBUTES ; 
 int /*<<< orphan*/  RX_PACKET_ERRORS ; 
 int /*<<< orphan*/  TNP ; 
 int /*<<< orphan*/  TNPCSUM_DONE ; 
 int /*<<< orphan*/  VLAN_CTAG ; 
 struct xgbe_ring_data* FUNC1 (struct xgbe_ring*,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*,int /*<<< orphan*/ ,struct net_device*,char*,int,...) ; 
 scalar_t__ FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*,struct xgbe_ring*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_packet_data*,struct xgbe_ring_desc*) ; 

__attribute__((used)) static int FUNC11(struct xgbe_channel *channel)
{
	struct xgbe_prv_data *pdata = channel->pdata;
	struct xgbe_ring *ring = channel->rx_ring;
	struct xgbe_ring_data *rdata;
	struct xgbe_ring_desc *rdesc;
	struct xgbe_packet_data *packet = &ring->packet_data;
	struct net_device *netdev = pdata->netdev;
	unsigned int err, etlt, l34t;

	FUNC0("-->xgbe_dev_read: cur = %d\n", ring->cur);

	rdata = FUNC1(ring, ring->cur);
	rdesc = rdata->rdesc;

	/* Check for data availability */
	if (FUNC3(rdesc->desc3, RX_NORMAL_DESC3, OWN))
		return 1;

	/* Make sure descriptor fields are read after reading the OWN bit */
	FUNC5();

	if (FUNC8(pdata))
		FUNC9(pdata, ring, ring->cur);

	if (FUNC3(rdesc->desc3, RX_NORMAL_DESC3, CTXT)) {
		/* Timestamp Context Descriptor */
		FUNC10(packet, rdesc);

		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       CONTEXT, 1);
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       CONTEXT_NEXT, 0);
		return 0;
	}

	/* Normal Descriptor, be sure Context Descriptor bit is off */
	FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES, CONTEXT, 0);

	/* Indicate if a Context Descriptor is next */
	if (FUNC3(rdesc->desc3, RX_NORMAL_DESC3, CDA))
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       CONTEXT_NEXT, 1);

	/* Get the header length */
	if (FUNC3(rdesc->desc3, RX_NORMAL_DESC3, FD)) {
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       FIRST, 1);
		rdata->rx.hdr_len = FUNC3(rdesc->desc2,
						      RX_NORMAL_DESC2, HL);
		if (rdata->rx.hdr_len)
			pdata->ext_stats.rx_split_header_packets++;
	} else {
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       FIRST, 0);
	}

	/* Get the RSS hash */
	if (FUNC3(rdesc->desc3, RX_NORMAL_DESC3, RSV)) {
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       RSS_HASH, 1);

		packet->rss_hash = FUNC6(rdesc->desc1);

		l34t = FUNC3(rdesc->desc3, RX_NORMAL_DESC3, L34T);
		switch (l34t) {
		case RX_DESC3_L34T_IPV4_TCP:
		case RX_DESC3_L34T_IPV4_UDP:
		case RX_DESC3_L34T_IPV6_TCP:
		case RX_DESC3_L34T_IPV6_UDP:
			packet->rss_hash_type = PKT_HASH_TYPE_L4;
			break;
		default:
			packet->rss_hash_type = PKT_HASH_TYPE_L3;
		}
	}

	/* Not all the data has been transferred for this packet */
	if (!FUNC3(rdesc->desc3, RX_NORMAL_DESC3, LD))
		return 0;

	/* This is the last of the data for this packet */
	FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
		       LAST, 1);

	/* Get the packet length */
	rdata->rx.len = FUNC3(rdesc->desc3, RX_NORMAL_DESC3, PL);

	/* Set checksum done indicator as appropriate */
	if (netdev->features & NETIF_F_RXCSUM) {
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       CSUM_DONE, 1);
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       TNPCSUM_DONE, 1);
	}

	/* Set the tunneled packet indicator */
	if (FUNC3(rdesc->desc2, RX_NORMAL_DESC2, TNP)) {
		FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
			       TNP, 1);
		pdata->ext_stats.rx_vxlan_packets++;

		l34t = FUNC3(rdesc->desc3, RX_NORMAL_DESC3, L34T);
		switch (l34t) {
		case RX_DESC3_L34T_IPV4_UNKNOWN:
		case RX_DESC3_L34T_IPV6_UNKNOWN:
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       TNPCSUM_DONE, 0);
			break;
		}
	}

	/* Check for errors (only valid in last descriptor) */
	err = FUNC3(rdesc->desc3, RX_NORMAL_DESC3, ES);
	etlt = FUNC3(rdesc->desc3, RX_NORMAL_DESC3, ETLT);
	FUNC7(pdata, rx_status, netdev, "err=%u, etlt=%#x\n", err, etlt);

	if (!err || !etlt) {
		/* No error if err is 0 or etlt is 0 */
		if ((etlt == 0x09) &&
		    (netdev->features & NETIF_F_HW_VLAN_CTAG_RX)) {
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       VLAN_CTAG, 1);
			packet->vlan_ctag = FUNC3(rdesc->desc0,
							      RX_NORMAL_DESC0,
							      OVT);
			FUNC7(pdata, rx_status, netdev, "vlan-ctag=%#06x\n",
				  packet->vlan_ctag);
		}
	} else {
		unsigned int tnp = FUNC2(packet->attributes,
						  RX_PACKET_ATTRIBUTES, TNP);

		if ((etlt == 0x05) || (etlt == 0x06)) {
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       CSUM_DONE, 0);
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       TNPCSUM_DONE, 0);
			pdata->ext_stats.rx_csum_errors++;
		} else if (tnp && ((etlt == 0x09) || (etlt == 0x0a))) {
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       CSUM_DONE, 0);
			FUNC4(packet->attributes, RX_PACKET_ATTRIBUTES,
				       TNPCSUM_DONE, 0);
			pdata->ext_stats.rx_vxlan_csum_errors++;
		} else {
			FUNC4(packet->errors, RX_PACKET_ERRORS,
				       FRAME, 1);
		}
	}

	pdata->ext_stats.rxq_packets[channel->queue_index]++;
	pdata->ext_stats.rxq_bytes[channel->queue_index] += rdata->rx.len;

	FUNC0("<--xgbe_dev_read: %s - descriptor=%u (cur=%d)\n", channel->name,
	      ring->cur & (ring->rdesc_count - 1), ring->cur);

	return 0;
}