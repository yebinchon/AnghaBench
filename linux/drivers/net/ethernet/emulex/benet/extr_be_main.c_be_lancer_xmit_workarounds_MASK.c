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
struct vlan_ethhdr {scalar_t__ h_vlan_proto; } ;
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct iphdr {int /*<<< orphan*/  tot_len; } ;
struct be_wrb_params {int /*<<< orphan*/  features; } ;
struct be_adapter {scalar_t__ qnq_vid; scalar_t__ pvid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 unsigned int ETH_HLEN ; 
 scalar_t__ ETH_P_8021Q ; 
 unsigned int VLAN_ETH_HLEN ; 
 int /*<<< orphan*/  VLAN_SKIP_HW ; 
 struct sk_buff* FUNC1 (struct be_adapter*,struct sk_buff*,struct be_wrb_params*) ; 
 scalar_t__ FUNC2 (struct be_adapter*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 scalar_t__ FUNC4 (struct be_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct be_adapter*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC15(struct be_adapter *adapter,
						  struct sk_buff *skb,
						  struct be_wrb_params
						  *wrb_params)
{
	struct vlan_ethhdr *veh = (struct vlan_ethhdr *)skb->data;
	unsigned int eth_hdr_len;
	struct iphdr *ip;

	/* For padded packets, BE HW modifies tot_len field in IP header
	 * incorrecly when VLAN tag is inserted by HW.
	 * For padded packets, Lancer computes incorrect checksum.
	 */
	eth_hdr_len = FUNC10(skb->protocol) == ETH_P_8021Q ?
						VLAN_ETH_HLEN : ETH_HLEN;
	if (skb->len <= 60 &&
	    (FUNC9(adapter) || FUNC13(skb)) &&
	    FUNC8(skb)) {
		ip = (struct iphdr *)FUNC7(skb);
		FUNC11(skb, eth_hdr_len + FUNC10(ip->tot_len));
	}

	/* If vlan tag is already inlined in the packet, skip HW VLAN
	 * tagging in pvid-tagging mode
	 */
	if (FUNC3(adapter) &&
	    veh->h_vlan_proto == FUNC6(ETH_P_8021Q))
		FUNC0(wrb_params->features, VLAN_SKIP_HW, 1);

	/* HW has a bug wherein it will calculate CSUM for VLAN
	 * pkts even though it is disabled.
	 * Manually insert VLAN in pkt.
	 */
	if (skb->ip_summed != CHECKSUM_PARTIAL &&
	    FUNC13(skb)) {
		skb = FUNC1(adapter, skb, wrb_params);
		if (FUNC14(!skb))
			goto err;
	}

	/* HW may lockup when VLAN HW tagging is requested on
	 * certain ipv6 packets. Drop such pkts if the HW workaround to
	 * skip HW tagging is not enabled by FW.
	 */
	if (FUNC14(FUNC2(adapter, skb) &&
		     (adapter->pvid || adapter->qnq_vid) &&
		     !FUNC12(adapter)))
		goto tx_drop;

	/* Manual VLAN tag insertion to prevent:
	 * ASIC lockup when the ASIC inserts VLAN tag into
	 * certain ipv6 packets. Insert VLAN tags in driver,
	 * and set event, completion, vlan bits accordingly
	 * in the Tx WRB.
	 */
	if (FUNC2(adapter, skb) &&
	    FUNC4(adapter, skb)) {
		skb = FUNC1(adapter, skb, wrb_params);
		if (FUNC14(!skb))
			goto err;
	}

	return skb;
tx_drop:
	FUNC5(skb);
err:
	return NULL;
}