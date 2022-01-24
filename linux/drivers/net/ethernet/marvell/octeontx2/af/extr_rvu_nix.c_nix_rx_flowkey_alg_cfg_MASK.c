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
struct rvu {int dummy; } ;

/* Variables and functions */
 int FIELDS_PER_ALG ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int NIX_FLOW_KEY_ALG_MAX ; 
 int NIX_FLOW_KEY_TYPE_IPV4 ; 
 int NIX_FLOW_KEY_TYPE_IPV6 ; 
 int NIX_FLOW_KEY_TYPE_SCTP ; 
 int NIX_FLOW_KEY_TYPE_TCP ; 
 int NIX_FLOW_KEY_TYPE_UDP ; 
 int FUNC1 (struct rvu*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rvu *rvu, int blkaddr)
{
	u32 flowkey_cfg, minkey_cfg;
	int alg, fid, rc;

	/* Disable all flow key algx fieldx */
	for (alg = 0; alg < NIX_FLOW_KEY_ALG_MAX; alg++) {
		for (fid = 0; fid < FIELDS_PER_ALG; fid++)
			FUNC2(rvu, blkaddr,
				    FUNC0(alg, fid),
				    0);
	}

	/* IPv4/IPv6 SIP/DIPs */
	flowkey_cfg = NIX_FLOW_KEY_TYPE_IPV4 | NIX_FLOW_KEY_TYPE_IPV6;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* TCPv4/v6 4-tuple, SIP, DIP, Sport, Dport */
	minkey_cfg = flowkey_cfg;
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* UDPv4/v6 4-tuple, SIP, DIP, Sport, Dport */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_UDP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* SCTPv4/v6 4-tuple, SIP, DIP, Sport, Dport */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_SCTP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* TCP/UDP v4/v6 4-tuple, rest IP pkts 2-tuple */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
			NIX_FLOW_KEY_TYPE_UDP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* TCP/SCTP v4/v6 4-tuple, rest IP pkts 2-tuple */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
			NIX_FLOW_KEY_TYPE_SCTP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* UDP/SCTP v4/v6 4-tuple, rest IP pkts 2-tuple */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_UDP |
			NIX_FLOW_KEY_TYPE_SCTP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	/* TCP/UDP/SCTP v4/v6 4-tuple, rest IP pkts 2-tuple */
	flowkey_cfg = minkey_cfg | NIX_FLOW_KEY_TYPE_TCP |
		      NIX_FLOW_KEY_TYPE_UDP | NIX_FLOW_KEY_TYPE_SCTP;
	rc = FUNC1(rvu, blkaddr, flowkey_cfg);
	if (rc < 0)
		return rc;

	return 0;
}