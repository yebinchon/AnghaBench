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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct be_wrb_params {int /*<<< orphan*/  features; int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  lso_mss; } ;
struct be_eth_hdr_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRC ; 
 int /*<<< orphan*/  IPCS ; 
 int /*<<< orphan*/  LSO ; 
 int /*<<< orphan*/  LSO6 ; 
 int /*<<< orphan*/  OS2BMC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct be_eth_hdr_wrb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCPCS ; 
 int /*<<< orphan*/  UDPCS ; 
 int /*<<< orphan*/  VLAN ; 
 int /*<<< orphan*/  VLAN_SKIP_HW ; 
 int /*<<< orphan*/  crc ; 
 int /*<<< orphan*/  event ; 
 int /*<<< orphan*/  ipcs ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  lso ; 
 int /*<<< orphan*/  lso6 ; 
 int /*<<< orphan*/  lso_mss ; 
 int /*<<< orphan*/  FUNC2 (struct be_eth_hdr_wrb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mgmt ; 
 int /*<<< orphan*/  num_wrb ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  tcpcs ; 
 int /*<<< orphan*/  udpcs ; 
 int /*<<< orphan*/  vlan ; 
 int /*<<< orphan*/  vlan_tag ; 

__attribute__((used)) static void FUNC4(struct be_adapter *adapter,
			 struct be_eth_hdr_wrb *hdr,
			 struct be_wrb_params *wrb_params,
			 struct sk_buff *skb)
{
	FUNC2(hdr, 0, sizeof(*hdr));

	FUNC1(crc, hdr,
			    FUNC0(wrb_params->features, CRC));
	FUNC1(ipcs, hdr,
			    FUNC0(wrb_params->features, IPCS));
	FUNC1(tcpcs, hdr,
			    FUNC0(wrb_params->features, TCPCS));
	FUNC1(udpcs, hdr,
			    FUNC0(wrb_params->features, UDPCS));

	FUNC1(lso, hdr,
			    FUNC0(wrb_params->features, LSO));
	FUNC1(lso6, hdr,
			    FUNC0(wrb_params->features, LSO6));
	FUNC1(lso_mss, hdr, wrb_params->lso_mss);

	/* Hack to skip HW VLAN tagging needs evt = 1, compl = 0. When this
	 * hack is not needed, the evt bit is set while ringing DB.
	 */
	FUNC1(event, hdr,
			    FUNC0(wrb_params->features, VLAN_SKIP_HW));
	FUNC1(vlan, hdr,
			    FUNC0(wrb_params->features, VLAN));
	FUNC1(vlan_tag, hdr, wrb_params->vlan_tag);

	FUNC1(num_wrb, hdr, FUNC3(skb));
	FUNC1(len, hdr, skb->len);
	FUNC1(mgmt, hdr,
			    FUNC0(wrb_params->features, OS2BMC));
}