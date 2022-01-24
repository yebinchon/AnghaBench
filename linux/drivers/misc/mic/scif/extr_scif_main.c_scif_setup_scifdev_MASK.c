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
typedef  int u8 ;
struct scif_dev {int node; int /*<<< orphan*/  spdev; int /*<<< orphan*/  p2p; int /*<<< orphan*/  qp_dwork; int /*<<< orphan*/  p2p_dwork; int /*<<< orphan*/  peer_add_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  disconn_wq; int /*<<< orphan*/  exit; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_SCIF_NODES ; 
 int /*<<< orphan*/  OP_IDLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct scif_dev* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scif_add_peer_device ; 
 struct scif_dev* scif_dev ; 
 int /*<<< orphan*/  scif_poll_qp_state ; 
 int /*<<< orphan*/  scif_qp_setup_handler ; 

__attribute__((used)) static int FUNC7(void)
{
	/* We support a maximum of 129 SCIF nodes including the mgmt node */
#define MAX_SCIF_NODES 129
	int i;
	u8 num_nodes = MAX_SCIF_NODES;

	scif_dev = FUNC5(num_nodes, sizeof(*scif_dev), GFP_KERNEL);
	if (!scif_dev)
		return -ENOMEM;
	for (i = 0; i < num_nodes; i++) {
		struct scif_dev *scifdev = &scif_dev[i];

		scifdev->node = i;
		scifdev->exit = OP_IDLE;
		FUNC4(&scifdev->disconn_wq);
		FUNC6(&scifdev->lock);
		FUNC2(&scifdev->peer_add_work, scif_add_peer_device);
		FUNC0(&scifdev->p2p_dwork,
				  scif_poll_qp_state);
		FUNC0(&scifdev->qp_dwork,
				  scif_qp_setup_handler);
		FUNC1(&scifdev->p2p);
		FUNC3(scifdev->spdev, NULL);
	}
	return 0;
}