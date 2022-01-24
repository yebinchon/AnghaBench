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
struct ath10k_snoc {int /*<<< orphan*/ * pipe_info; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int CE_COUNT ; 
 struct ath10k_snoc* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	struct ath10k_snoc *ar_snoc = FUNC0(ar);
	int i;

	for (i = 0; i < CE_COUNT; i++)
		FUNC1(&ar_snoc->pipe_info[i]);
}