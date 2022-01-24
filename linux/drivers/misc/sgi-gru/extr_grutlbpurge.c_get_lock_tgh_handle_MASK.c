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
struct gru_tlb_global_handle {int dummy; } ;
struct gru_state {scalar_t__ gs_blade_id; } ;

/* Variables and functions */
 int FUNC0 (struct gru_state*) ; 
 int FUNC1 (struct gru_state*) ; 
 struct gru_tlb_global_handle* FUNC2 (struct gru_state*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gru_tlb_global_handle*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static struct gru_tlb_global_handle *FUNC6(struct gru_state
							 *gru)
{
	struct gru_tlb_global_handle *tgh;
	int n;

	FUNC4();
	if (FUNC5() == gru->gs_blade_id)
		n = FUNC1(gru);
	else
		n = FUNC0(gru);
	tgh = FUNC2(gru, n);
	FUNC3(tgh);

	return tgh;
}