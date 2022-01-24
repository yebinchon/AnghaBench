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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct qede_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct eth_fast_path_rx_tpa_start_cqe {scalar_t__ header_len; int /*<<< orphan*/  len_on_first_bd; TYPE_1__ pars_flags; } ;
struct TYPE_4__ {scalar_t__ gso_size; int /*<<< orphan*/  gso_type; } ;

/* Variables and functions */
 int PARSING_AND_ERR_FLAGS_L3TYPE_MASK ; 
 int PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT ; 
 int /*<<< orphan*/  SKB_GSO_TCPV4 ; 
 int /*<<< orphan*/  SKB_GSO_TCPV6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC3(struct qede_dev *edev,
				struct sk_buff *skb,
				struct eth_fast_path_rx_tpa_start_cqe *cqe)
{
	u16 parsing_flags = FUNC1(cqe->pars_flags.flags);

	if (((parsing_flags >> PARSING_AND_ERR_FLAGS_L3TYPE_SHIFT) &
	    PARSING_AND_ERR_FLAGS_L3TYPE_MASK) == 2)
		FUNC2(skb)->gso_type = SKB_GSO_TCPV6;
	else
		FUNC2(skb)->gso_type = SKB_GSO_TCPV4;

	FUNC2(skb)->gso_size = FUNC0(cqe->len_on_first_bd) -
				    cqe->header_len;
}