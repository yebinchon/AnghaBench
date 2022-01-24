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
struct ionic_cq_info {struct ionic_admin_comp* cq_desc; } ;
struct ionic_cq {int /*<<< orphan*/  bound_q; int /*<<< orphan*/  done_color; } ;
struct ionic_admin_comp {int /*<<< orphan*/  comp_index; int /*<<< orphan*/  color; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ionic_cq_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ionic_cq *cq,
				 struct ionic_cq_info *cq_info)
{
	struct ionic_admin_comp *comp = cq_info->cq_desc;

	if (!FUNC0(comp->color, cq->done_color))
		return false;

	FUNC1(cq->bound_q, cq_info, FUNC2(comp->comp_index));

	return true;
}