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
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int dummy; } ;
typedef  enum cxgb4_bar2_qtype { ____Placeholder_cxgb4_bar2_qtype } cxgb4_bar2_qtype ;

/* Variables and functions */
 int CXGB4_BAR2_QTYPE_EGRESS ; 
 int /*<<< orphan*/  T4_BAR2_QTYPE_EGRESS ; 
 int /*<<< orphan*/  T4_BAR2_QTYPE_INGRESS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,unsigned int*) ; 

int FUNC2(struct net_device *dev,
			 unsigned int qid,
			 enum cxgb4_bar2_qtype qtype,
			 int user,
			 u64 *pbar2_qoffset,
			 unsigned int *pbar2_qid)
{
	return FUNC1(FUNC0(dev),
				 qid,
				 (qtype == CXGB4_BAR2_QTYPE_EGRESS
				  ? T4_BAR2_QTYPE_EGRESS
				  : T4_BAR2_QTYPE_INGRESS),
				 user,
				 pbar2_qoffset,
				 pbar2_qid);
}