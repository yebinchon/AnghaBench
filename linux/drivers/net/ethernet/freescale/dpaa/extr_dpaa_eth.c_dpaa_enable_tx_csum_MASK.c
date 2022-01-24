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
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  protocol; } ;
struct qm_fd {int /*<<< orphan*/  cmd; } ;
struct ipv6hdr {int nexthdr; } ;
struct iphdr {int protocol; } ;
struct fman_prs_result {int* ip_off; int l4_off; int /*<<< orphan*/  l4r; void* l3r; } ;
struct dpaa_priv {int /*<<< orphan*/  net_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_vlan_encapsulated_proto; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EIO ; 
 int ETH_P_8021Q ; 
#define  ETH_P_IP 131 
#define  ETH_P_IPV6 130 
 int FM_FD_CMD_DTC ; 
 int FM_FD_CMD_RPD ; 
 int /*<<< orphan*/  FM_L3_PARSE_RESULT_IPV4 ; 
 int /*<<< orphan*/  FM_L3_PARSE_RESULT_IPV6 ; 
 int /*<<< orphan*/  FM_L4_PARSE_RESULT_TCP ; 
 int /*<<< orphan*/  FM_L4_PARSE_RESULT_UDP ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 struct ipv6hdr* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_err ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct dpaa_priv *priv,
			       struct sk_buff *skb,
			       struct qm_fd *fd,
			       char *parse_results)
{
	struct fman_prs_result *parse_result;
	u16 ethertype = FUNC7(skb->protocol);
	struct ipv6hdr *ipv6h = NULL;
	struct iphdr *iph;
	int retval = 0;
	u8 l4_proto;

	if (skb->ip_summed != CHECKSUM_PARTIAL)
		return 0;

	/* Note: L3 csum seems to be already computed in sw, but we can't choose
	 * L4 alone from the FM configuration anyway.
	 */

	/* Fill in some fields of the Parse Results array, so the FMan
	 * can find them as if they came from the FMan Parser.
	 */
	parse_result = (struct fman_prs_result *)parse_results;

	/* If we're dealing with VLAN, get the real Ethernet type */
	if (ethertype == ETH_P_8021Q) {
		/* We can't always assume the MAC header is set correctly
		 * by the stack, so reset to beginning of skb->data
		 */
		FUNC9(skb);
		ethertype = FUNC7(FUNC11(skb)->h_vlan_encapsulated_proto);
	}

	/* Fill in the relevant L3 parse result fields
	 * and read the L4 protocol type
	 */
	switch (ethertype) {
	case ETH_P_IP:
		parse_result->l3r = FUNC1(FM_L3_PARSE_RESULT_IPV4);
		iph = FUNC3(skb);
		FUNC0(!iph);
		l4_proto = iph->protocol;
		break;
	case ETH_P_IPV6:
		parse_result->l3r = FUNC1(FM_L3_PARSE_RESULT_IPV6);
		ipv6h = FUNC4(skb);
		FUNC0(!ipv6h);
		l4_proto = ipv6h->nexthdr;
		break;
	default:
		/* We shouldn't even be here */
		if (FUNC5())
			FUNC6(priv, tx_err, priv->net_dev,
				    "Can't compute HW csum for L3 proto 0x%x\n",
				    FUNC7(skb->protocol));
		retval = -EIO;
		goto return_error;
	}

	/* Fill in the relevant L4 parse result fields */
	switch (l4_proto) {
	case IPPROTO_UDP:
		parse_result->l4r = FM_L4_PARSE_RESULT_UDP;
		break;
	case IPPROTO_TCP:
		parse_result->l4r = FM_L4_PARSE_RESULT_TCP;
		break;
	default:
		if (FUNC5())
			FUNC6(priv, tx_err, priv->net_dev,
				    "Can't compute HW csum for L4 proto 0x%x\n",
				    l4_proto);
		retval = -EIO;
		goto return_error;
	}

	/* At index 0 is IPOffset_1 as defined in the Parse Results */
	parse_result->ip_off[0] = (u8)FUNC8(skb);
	parse_result->l4_off = (u8)FUNC10(skb);

	/* Enable L3 (and L4, if TCP or UDP) HW checksum. */
	fd->cmd |= FUNC2(FM_FD_CMD_RPD | FM_FD_CMD_DTC);

	/* On P1023 and similar platforms fd->cmd interpretation could
	 * be disabled by setting CONTEXT_A bit ICMD; currently this bit
	 * is not set so we do not need to check; in the future, if/when
	 * using context_a we need to check this bit
	 */

return_error:
	return retval;
}