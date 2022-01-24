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
struct i40e_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_pf*,int,int) ; 

__attribute__((used)) static void FUNC2(struct i40e_pf *pf, bool lock_acquired)
{
	FUNC0(pf, lock_acquired);
	FUNC1(pf, false, lock_acquired);
}