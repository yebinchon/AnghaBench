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
struct qede_rx_queue {int dummy; } ;
struct qede_dev {int dummy; } ;
struct eth_fast_path_rx_tpa_cont_cqe {scalar_t__* len_list; int /*<<< orphan*/  tpa_agg_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*,struct qede_rx_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct qede_dev *edev,
				 struct qede_rx_queue *rxq,
				 struct eth_fast_path_rx_tpa_cont_cqe *cqe)
{
	int i;

	for (i = 0; cqe->len_list[i]; i++)
		FUNC2(edev, rxq, cqe->tpa_agg_index,
				   FUNC1(cqe->len_list[i]));

	if (FUNC3(i > 1))
		FUNC0(edev,
		       "Strange - TPA cont with more than a single len_list entry\n");
}