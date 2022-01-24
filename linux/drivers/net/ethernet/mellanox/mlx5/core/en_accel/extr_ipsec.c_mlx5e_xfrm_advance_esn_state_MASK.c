#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfrm_state {int dummy; } ;
struct mlx5e_ipsec_sa_entry {TYPE_1__* ipsec; } ;
struct mlx5e_ipsec_modify_state_work {int /*<<< orphan*/  work; struct mlx5e_ipsec_sa_entry* sa_entry; int /*<<< orphan*/  attrs; } ;
struct TYPE_2__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  _update_xfrm_state ; 
 struct mlx5e_ipsec_modify_state_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_ipsec_sa_entry*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct mlx5e_ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5e_ipsec_sa_entry* FUNC6 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC7(struct xfrm_state *x)
{
	struct mlx5e_ipsec_sa_entry *sa_entry = FUNC6(x);
	struct mlx5e_ipsec_modify_state_work *modify_work;
	bool need_update;

	if (!sa_entry)
		return;

	need_update = FUNC4(sa_entry);
	if (!need_update)
		return;

	modify_work = FUNC2(sizeof(*modify_work), GFP_ATOMIC);
	if (!modify_work)
		return;

	FUNC3(sa_entry, &modify_work->attrs);
	modify_work->sa_entry = sa_entry;

	FUNC0(&modify_work->work, _update_xfrm_state);
	FUNC1(!FUNC5(sa_entry->ipsec->wq, &modify_work->work));
}