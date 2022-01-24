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
 int /*<<< orphan*/  I40E_VSI_VMDQ2 ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_pf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct i40e_pf *pf)
{
	return !!FUNC0(pf, I40E_VSI_VMDQ2);
}