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
struct mlx5dr_matcher_rx_tx {int /*<<< orphan*/  e_anchor; int /*<<< orphan*/  s_htbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mlx5dr_matcher_rx_tx *nic_matcher)
{
	FUNC0(nic_matcher->s_htbl);
	FUNC0(nic_matcher->e_anchor);
}