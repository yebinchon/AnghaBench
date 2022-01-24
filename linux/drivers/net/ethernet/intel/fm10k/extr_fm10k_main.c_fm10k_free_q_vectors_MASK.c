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
struct fm10k_intfc {int num_q_vectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 

__attribute__((used)) static void FUNC2(struct fm10k_intfc *interface)
{
	int v_idx = interface->num_q_vectors;

	FUNC1(interface);

	while (v_idx--)
		FUNC0(interface, v_idx);
}