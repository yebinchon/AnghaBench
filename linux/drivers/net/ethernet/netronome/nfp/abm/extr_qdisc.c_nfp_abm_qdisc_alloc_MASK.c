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
typedef  void* u32 ;
struct nfp_qdisc {int type; unsigned int num_children; struct nfp_qdisc* children; void* handle; void* parent_handle; struct net_device* netdev; } ;
struct nfp_port {int /*<<< orphan*/  tc_offload_cnt; } ;
struct nfp_abm_link {TYPE_2__* abm; int /*<<< orphan*/  qdiscs; } ;
struct net_device {int dummy; } ;
typedef  enum nfp_qdisc_type { ____Placeholder_nfp_qdisc_type } nfp_qdisc_type ;
struct TYPE_4__ {TYPE_1__* app; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 struct nfp_qdisc* FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_qdisc*) ; 
 struct nfp_qdisc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 struct nfp_port* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct nfp_qdisc*) ; 

__attribute__((used)) static struct nfp_qdisc *
FUNC7(struct net_device *netdev, struct nfp_abm_link *alink,
		    enum nfp_qdisc_type type, u32 parent_handle, u32 handle,
		    unsigned int children)
{
	struct nfp_port *port = FUNC5(netdev);
	struct nfp_qdisc *qdisc;
	int err;

	qdisc = FUNC3(sizeof(*qdisc), GFP_KERNEL);
	if (!qdisc)
		return NULL;

	if (children) {
		qdisc->children = FUNC1(children, sizeof(void *), GFP_KERNEL);
		if (!qdisc->children)
			goto err_free_qdisc;
	}

	qdisc->netdev = netdev;
	qdisc->type = type;
	qdisc->parent_handle = parent_handle;
	qdisc->handle = handle;
	qdisc->num_children = children;

	err = FUNC6(&alink->qdiscs, FUNC0(qdisc->handle), qdisc);
	if (err) {
		FUNC4(alink->abm->app->cpp,
			"Qdisc insertion into radix tree failed: %d\n", err);
		goto err_free_child_tbl;
	}

	port->tc_offload_cnt++;
	return qdisc;

err_free_child_tbl:
	FUNC2(qdisc->children);
err_free_qdisc:
	FUNC2(qdisc);
	return NULL;
}