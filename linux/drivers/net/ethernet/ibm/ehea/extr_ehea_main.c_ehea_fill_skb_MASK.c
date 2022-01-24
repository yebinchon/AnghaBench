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
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; int /*<<< orphan*/  protocol; } ;
struct net_device {int dummy; } ;
struct ehea_port_res {TYPE_1__* port; } ;
struct ehea_cqe {int num_bytes_transfered; int status; int /*<<< orphan*/  inet_checksum_value; } ;
struct TYPE_2__ {struct ehea_port_res* port_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_COMPLETE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EHEA_CQE_BLIND_CKSUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC4(struct net_device *dev,
				 struct sk_buff *skb, struct ehea_cqe *cqe,
				 struct ehea_port_res *pr)
{
	int length = cqe->num_bytes_transfered - 4;	/*remove CRC */

	FUNC2(skb, length);
	skb->protocol = FUNC1(skb, dev);

	/* The packet was not an IPV4 packet so a complemented checksum was
	   calculated. The value is found in the Internet Checksum field. */
	if (cqe->status & EHEA_CQE_BLIND_CKSUM) {
		skb->ip_summed = CHECKSUM_COMPLETE;
		skb->csum = FUNC0(~cqe->inet_checksum_value);
	} else
		skb->ip_summed = CHECKSUM_UNNECESSARY;

	FUNC3(skb, pr - &pr->port->port_res[0]);
}