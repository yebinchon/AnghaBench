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
typedef  scalar_t__ u64 ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct ehea_qp {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  poll_receive_errors; } ;
struct TYPE_7__ {int len; struct sk_buff** arr; } ;
struct TYPE_6__ {int len; struct sk_buff** arr; } ;
struct TYPE_5__ {int len; struct sk_buff** arr; } ;
struct ehea_port_res {int rx_packets; int /*<<< orphan*/  rx_bytes; TYPE_4__ p_stats; int /*<<< orphan*/  napi; TYPE_3__ rq3_skba; TYPE_2__ rq2_skba; TYPE_1__ rq1_skba; struct ehea_qp* qp; struct ehea_port* port; } ;
struct ehea_port {int dummy; } ;
struct ehea_cqe {int status; int /*<<< orphan*/  vlan_tag; scalar_t__ num_bytes_transfered; } ;

/* Variables and functions */
 int EHEA_CQE_VLAN_TAG_XTRACT ; 
 int /*<<< orphan*/  EHEA_L_PKT_SIZE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ehea_cqe*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_cqe*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct sk_buff*,struct ehea_cqe*,struct ehea_port_res*) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_qp*) ; 
 struct ehea_cqe* FUNC5 (struct ehea_qp*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ehea_port_res*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ehea_port_res*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_port_res*,int) ; 
 int FUNC9 (struct ehea_port_res*,int,struct ehea_cqe*,int*,int*) ; 
 struct sk_buff* FUNC10 (struct sk_buff**,int,struct ehea_cqe*) ; 
 struct sk_buff* FUNC11 (struct sk_buff**,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ehea_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct ehea_port*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC17 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,char*,scalar_t__) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct net_device *dev,
			   struct ehea_port_res *pr,
			   int budget)
{
	struct ehea_port *port = pr->port;
	struct ehea_qp *qp = pr->qp;
	struct ehea_cqe *cqe;
	struct sk_buff *skb;
	struct sk_buff **skb_arr_rq1 = pr->rq1_skba.arr;
	struct sk_buff **skb_arr_rq2 = pr->rq2_skba.arr;
	struct sk_buff **skb_arr_rq3 = pr->rq3_skba.arr;
	int skb_arr_rq1_len = pr->rq1_skba.len;
	int skb_arr_rq2_len = pr->rq2_skba.len;
	int skb_arr_rq3_len = pr->rq3_skba.len;
	int processed, processed_rq1, processed_rq2, processed_rq3;
	u64 processed_bytes = 0;
	int wqe_index, last_wqe_index, rq, port_reset;

	processed = processed_rq1 = processed_rq2 = processed_rq3 = 0;
	last_wqe_index = 0;

	cqe = FUNC5(qp, &wqe_index);
	while ((processed < budget) && cqe) {
		FUNC4(qp);
		processed_rq1++;
		processed++;
		if (FUNC17(port))
			FUNC2(cqe, sizeof(*cqe), "CQE");

		last_wqe_index = wqe_index;
		FUNC18();
		if (!FUNC1(cqe, &rq)) {
			if (rq == 1) {
				/* LL RQ1 */
				skb = FUNC11(skb_arr_rq1,
							  skb_arr_rq1_len,
							  wqe_index);
				if (FUNC20(!skb)) {
					FUNC16(port, rx_err, dev,
						  "LL rq1: skb=NULL\n");

					skb = FUNC14(dev,
							       EHEA_L_PKT_SIZE);
					if (!skb)
						break;
				}
				FUNC19(skb, ((char *)cqe) + 64,
						 cqe->num_bytes_transfered - 4);
				FUNC3(dev, skb, cqe, pr);
			} else if (rq == 2) {
				/* RQ2 */
				skb = FUNC10(skb_arr_rq2,
						       skb_arr_rq2_len, cqe);
				if (FUNC20(!skb)) {
					FUNC15(port, rx_err, dev,
						  "rq2: skb=NULL\n");
					break;
				}
				FUNC3(dev, skb, cqe, pr);
				processed_rq2++;
			} else {
				/* RQ3 */
				skb = FUNC10(skb_arr_rq3,
						       skb_arr_rq3_len, cqe);
				if (FUNC20(!skb)) {
					FUNC15(port, rx_err, dev,
						  "rq3: skb=NULL\n");
					break;
				}
				FUNC3(dev, skb, cqe, pr);
				processed_rq3++;
			}

			processed_bytes += skb->len;

			if (cqe->status & EHEA_CQE_VLAN_TAG_XTRACT)
				FUNC0(skb, FUNC12(ETH_P_8021Q),
						       cqe->vlan_tag);

			FUNC13(&pr->napi, skb);
		} else {
			pr->p_stats.poll_receive_errors++;
			port_reset = FUNC9(pr, rq, cqe,
							   &processed_rq2,
							   &processed_rq3);
			if (port_reset)
				break;
		}
		cqe = FUNC5(qp, &wqe_index);
	}

	pr->rx_packets += processed;
	pr->rx_bytes += processed_bytes;

	FUNC6(pr, last_wqe_index, processed_rq1);
	FUNC7(pr, processed_rq2);
	FUNC8(pr, processed_rq3);

	return processed;
}