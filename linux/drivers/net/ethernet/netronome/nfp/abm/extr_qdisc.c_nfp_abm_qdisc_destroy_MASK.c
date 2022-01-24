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
typedef  int /*<<< orphan*/  u32 ;
struct nfp_qdisc {int /*<<< orphan*/  num_children; int /*<<< orphan*/  use_cnt; } ;
struct nfp_abm_link {struct nfp_qdisc* root_qdisc; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct nfp_qdisc* FUNC0 (struct nfp_abm_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct nfp_abm_link*,struct nfp_qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_abm_link*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_qdisc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct nfp_abm_link *alink,
		      u32 handle)
{
	struct nfp_qdisc *qdisc;

	qdisc = FUNC0(alink, handle);
	if (!qdisc)
		return;

	/* We don't get TC_SETUP_ROOT_QDISC w/ MQ when netdev is unregistered */
	if (alink->root_qdisc == qdisc)
		qdisc->use_cnt--;

	FUNC3(qdisc, 0, qdisc->num_children);
	FUNC1(netdev, alink, qdisc);

	if (alink->root_qdisc == qdisc) {
		alink->root_qdisc = NULL;
		/* Only root change matters, other changes are acted upon on
		 * the graft notification.
		 */
		FUNC2(alink);
	}
}