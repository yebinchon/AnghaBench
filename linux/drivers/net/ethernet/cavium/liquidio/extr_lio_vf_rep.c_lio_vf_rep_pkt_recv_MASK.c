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
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int ossp; } ;
union octeon_rh {TYPE_2__ r_dh; TYPE_1__ r; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; struct net_device* dev; int /*<<< orphan*/  protocol; } ;
struct octeon_recv_pkt {int buffer_count; struct sk_buff** buffer_ptr; int /*<<< orphan*/ * buffer_size; union octeon_rh rh; int /*<<< orphan*/  octeon_id; } ;
struct octeon_recv_info {struct octeon_recv_pkt* recv_pkt; } ;
struct octeon_device {int dummy; } ;
struct net_device {int dummy; } ;
struct lio_vf_rep_desc {int /*<<< orphan*/  ifstate; } ;

/* Variables and functions */
 int BYTES_PER_DHLEN_UNIT ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int LIO_IFSTATE_RUNNING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 struct octeon_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC4 (struct octeon_device*,int) ; 
 struct lio_vf_rep_desc* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_recv_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC10(struct octeon_recv_info *recv_info, void *buf)
{
	struct octeon_recv_pkt *recv_pkt = recv_info->recv_pkt;
	struct lio_vf_rep_desc *vf_rep;
	struct net_device *vf_ndev;
	struct octeon_device *oct;
	union octeon_rh *rh;
	struct sk_buff *skb;
	int i, ifidx;

	oct = FUNC2(recv_pkt->octeon_id);
	if (!oct)
		goto free_buffers;

	skb = recv_pkt->buffer_ptr[0];
	rh = &recv_pkt->rh;
	ifidx = rh->r.ossp;

	vf_ndev = FUNC4(oct, ifidx);
	if (!vf_ndev)
		goto free_buffers;

	vf_rep = FUNC5(vf_ndev);
	if (!(FUNC0(&vf_rep->ifstate) & LIO_IFSTATE_RUNNING) ||
	    recv_pkt->buffer_count > 1)
		goto free_buffers;

	skb->dev = vf_ndev;

	/* Multiple buffers are not used for vf_rep packets.
	 * So just buffer_size[0] is valid.
	 */
	FUNC3(oct, skb, recv_pkt->buffer_size[0]);

	FUNC9(skb, rh->r_dh.len * BYTES_PER_DHLEN_UNIT);
	skb->protocol = FUNC1(skb, skb->dev);
	skb->ip_summed = CHECKSUM_NONE;

	FUNC6(skb);

	FUNC7(recv_info);

	return 0;

free_buffers:
	for (i = 0; i < recv_pkt->buffer_count; i++)
		FUNC8(recv_pkt->buffer_ptr[i]);

	FUNC7(recv_info);

	return 0;
}