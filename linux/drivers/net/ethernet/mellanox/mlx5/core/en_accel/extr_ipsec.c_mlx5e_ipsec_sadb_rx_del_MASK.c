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
struct mlx5e_ipsec_sa_entry {int /*<<< orphan*/  hlist; struct mlx5e_ipsec* ipsec; } ;
struct mlx5e_ipsec {int /*<<< orphan*/  sadb_rx_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct mlx5e_ipsec_sa_entry *sa_entry)
{
	struct mlx5e_ipsec *ipsec = sa_entry->ipsec;
	unsigned long flags;

	FUNC1(&ipsec->sadb_rx_lock, flags);
	FUNC0(&sa_entry->hlist);
	FUNC2(&ipsec->sadb_rx_lock, flags);
}