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
struct mlx4_mpt_entry {int /*<<< orphan*/  mtt_sz; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mlx4_mpt_entry *mpt)
{
	return FUNC0(mpt->mtt_sz);
}