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
struct qed_iwarp_listener {int /*<<< orphan*/  vlan; int /*<<< orphan*/  port; int /*<<< orphan*/ * ip_addr; int /*<<< orphan*/  event_cb; int /*<<< orphan*/  list_entry; int /*<<< orphan*/  max_backlog; int /*<<< orphan*/  cb_context; int /*<<< orphan*/  ip_version; } ;
struct qed_iwarp_listen_out {struct qed_iwarp_listener* handle; } ;
struct qed_iwarp_listen_in {int /*<<< orphan*/  max_backlog; int /*<<< orphan*/  cb_context; int /*<<< orphan*/  event_cb; int /*<<< orphan*/  vlan; int /*<<< orphan*/  port; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  ip_version; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  iw_lock; int /*<<< orphan*/  listen_list; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct qed_iwarp_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 struct qed_iwarp_listener* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(void *rdma_cxt,
			struct qed_iwarp_listen_in *iparams,
			struct qed_iwarp_listen_out *oparams)
{
	struct qed_hwfn *p_hwfn = rdma_cxt;
	struct qed_iwarp_listener *listener;

	listener = FUNC1(sizeof(*listener), GFP_KERNEL);
	if (!listener)
		return -ENOMEM;

	listener->ip_version = iparams->ip_version;
	FUNC3(listener->ip_addr, iparams->ip_addr, sizeof(listener->ip_addr));
	listener->port = iparams->port;
	listener->vlan = iparams->vlan;

	listener->event_cb = iparams->event_cb;
	listener->cb_context = iparams->cb_context;
	listener->max_backlog = iparams->max_backlog;
	oparams->handle = listener;

	FUNC4(&p_hwfn->p_rdma_info->iwarp.iw_lock);
	FUNC2(&listener->list_entry,
		      &p_hwfn->p_rdma_info->iwarp.listen_list);
	FUNC5(&p_hwfn->p_rdma_info->iwarp.iw_lock);

	FUNC0(p_hwfn,
		   QED_MSG_RDMA,
		   "callback=%p handle=%p ip=%x:%x:%x:%x port=0x%x vlan=0x%x\n",
		   listener->event_cb,
		   listener,
		   listener->ip_addr[0],
		   listener->ip_addr[1],
		   listener->ip_addr[2],
		   listener->ip_addr[3], listener->port, listener->vlan);

	return 0;
}