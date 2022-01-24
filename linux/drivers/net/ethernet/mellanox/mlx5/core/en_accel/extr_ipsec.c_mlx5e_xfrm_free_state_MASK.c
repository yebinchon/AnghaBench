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
struct TYPE_4__ {int flags; } ;
struct xfrm_state {TYPE_2__ xso; } ;
struct mlx5e_ipsec_sa_entry {int /*<<< orphan*/  xfrm; scalar_t__ hw_context; TYPE_1__* ipsec; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int XFRM_OFFLOAD_INBOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_ipsec_sa_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_ipsec_sa_entry*) ; 
 struct mlx5e_ipsec_sa_entry* FUNC5 (struct xfrm_state*) ; 

__attribute__((used)) static void FUNC6(struct xfrm_state *x)
{
	struct mlx5e_ipsec_sa_entry *sa_entry = FUNC5(x);

	if (!sa_entry)
		return;

	if (sa_entry->hw_context) {
		FUNC0(sa_entry->ipsec->wq);
		FUNC3(sa_entry->hw_context);
		FUNC2(sa_entry->xfrm);
	}

	if (x->xso.flags & XFRM_OFFLOAD_INBOUND)
		FUNC4(sa_entry);

	FUNC1(sa_entry);
}