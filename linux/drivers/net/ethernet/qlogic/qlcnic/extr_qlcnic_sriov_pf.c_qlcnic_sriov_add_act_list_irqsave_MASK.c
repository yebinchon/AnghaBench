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
struct qlcnic_trans_list {int /*<<< orphan*/  lock; } ;
struct qlcnic_vf_info {struct qlcnic_trans_list rcv_act; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_bc_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_sriov*,struct qlcnic_vf_info*,struct qlcnic_bc_trans*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct qlcnic_sriov *sriov,
					     struct qlcnic_vf_info *vf,
					     struct qlcnic_bc_trans *trans)
{
	struct qlcnic_trans_list *t_list = &vf->rcv_act;
	unsigned long flag;

	FUNC1(&t_list->lock, flag);

	FUNC0(sriov, vf, trans);

	FUNC2(&t_list->lock, flag);
	return 0;
}