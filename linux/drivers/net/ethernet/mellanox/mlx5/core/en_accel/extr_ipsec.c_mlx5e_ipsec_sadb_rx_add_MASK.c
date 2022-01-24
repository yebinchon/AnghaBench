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
struct mlx5e_ipsec_sa_entry {int handle; int /*<<< orphan*/  hlist; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int /*<<< orphan*/  sadb_rx_lock; int /*<<< orphan*/  sadb_rx; int /*<<< orphan*/  halloc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mlx5e_ipsec_sa_entry *sa_entry)
{
	struct mlx5e_ipsec *ipsec = sa_entry->ipsec;
	unsigned long flags;
	int ret;

	ret = FUNC1(&ipsec->halloc, 1, 0, GFP_KERNEL);
	if (ret < 0)
		return ret;

	FUNC2(&ipsec->sadb_rx_lock, flags);
	sa_entry->handle = ret;
	FUNC0(ipsec->sadb_rx, &sa_entry->hlist, sa_entry->handle);
	FUNC3(&ipsec->sadb_rx_lock, flags);

	return 0;
}