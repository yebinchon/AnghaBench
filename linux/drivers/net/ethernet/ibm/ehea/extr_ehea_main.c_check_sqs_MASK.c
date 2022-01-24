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
struct ehea_swqe {int immediate_data_length; int /*<<< orphan*/  tx_control; int /*<<< orphan*/  wr_id; } ;
struct ehea_port_res {scalar_t__ sq_restart_flag; int /*<<< orphan*/  port; int /*<<< orphan*/  qp; int /*<<< orphan*/  swqe_avail; } ;
struct ehea_port {int num_def_qps; int /*<<< orphan*/  restart_wq; struct ehea_port_res* port_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  EHEA_SWQE_IMM_DATA_PRESENT ; 
 int /*<<< orphan*/  EHEA_SWQE_PURGE ; 
 int /*<<< orphan*/  EHEA_SWQE_SIGNALLED_COMPLETION ; 
 int /*<<< orphan*/  SWQE_HEADER_SIZE ; 
 int /*<<< orphan*/  SWQE_RESTART_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ehea_swqe* FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ehea_swqe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ehea_swqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ehea_port *port)
{
	struct ehea_swqe *swqe;
	int swqe_index;
	int i;

	for (i = 0; i < port->num_def_qps; i++) {
		struct ehea_port_res *pr = &port->port_res[i];
		int ret;
		swqe = FUNC1(pr->qp, &swqe_index);
		FUNC4(swqe, 0, SWQE_HEADER_SIZE);
		FUNC0(&pr->swqe_avail);

		swqe->tx_control |= EHEA_SWQE_PURGE;
		swqe->wr_id = SWQE_RESTART_CHECK;
		swqe->tx_control |= EHEA_SWQE_SIGNALLED_COMPLETION;
		swqe->tx_control |= EHEA_SWQE_IMM_DATA_PRESENT;
		swqe->immediate_data_length = 80;

		FUNC2(pr->qp, swqe);

		ret = FUNC7(port->restart_wq,
					 pr->sq_restart_flag == 0,
					 FUNC5(100));

		if (!ret) {
			FUNC6("HW/SW queues out of sync\n");
			FUNC3(pr->port);
			return;
		}
	}
}