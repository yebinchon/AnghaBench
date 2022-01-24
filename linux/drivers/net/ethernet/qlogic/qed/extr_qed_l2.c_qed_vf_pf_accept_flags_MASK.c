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
struct qed_sp_vport_update_params {int /*<<< orphan*/  accept_flags; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_accept_flags {int dummy; } ;
typedef  int /*<<< orphan*/  s_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct qed_filter_accept_flags*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_sp_vport_update_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_sp_vport_update_params*) ; 

__attribute__((used)) static int
FUNC3(struct qed_hwfn *p_hwfn,
		       struct qed_filter_accept_flags *p_accept_flags)
{
	struct qed_sp_vport_update_params s_params;

	FUNC1(&s_params, 0, sizeof(s_params));
	FUNC0(&s_params.accept_flags, p_accept_flags,
	       sizeof(struct qed_filter_accept_flags));

	return FUNC2(p_hwfn, &s_params);
}