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
struct nfp_qdisc {scalar_t__ type; int /*<<< orphan*/ * children; } ;
struct nfp_abm_link {unsigned int total_queues; } ;

/* Variables and functions */
 scalar_t__ NFP_QDISC_MQ ; 
 scalar_t__ FUNC0 (struct nfp_qdisc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_abm_link*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_abm_link *alink, struct nfp_qdisc *qdisc)
{
	unsigned int i;

	if (qdisc->type != NFP_QDISC_MQ)
		return;

	for (i = 0; i < alink->total_queues; i++)
		if (FUNC0(qdisc, i))
			FUNC1(alink, qdisc->children[i], i);
}