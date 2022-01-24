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
struct nfp_abm_link {unsigned int queue_base; int /*<<< orphan*/  abm; } ;
typedef  enum nfp_abm_q_action { ____Placeholder_nfp_abm_q_action } nfp_abm_q_action ;

/* Variables and functions */
 unsigned int NFP_NET_MAX_RX_RINGS ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 

int FUNC1(struct nfp_abm_link *alink, unsigned int band,
			   unsigned int queue, enum nfp_abm_q_action act)
{
	unsigned int qid;

	qid = band * NFP_NET_MAX_RX_RINGS + alink->queue_base + queue;

	return FUNC0(alink->abm, qid, act);
}