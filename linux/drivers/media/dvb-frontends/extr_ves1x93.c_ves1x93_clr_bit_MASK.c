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
struct ves1x93_state {int* init_1x93_tab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ves1x93_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2 (struct ves1x93_state* state)
{
	FUNC0(10);
	FUNC1 (state, 0, state->init_1x93_tab[0] & 0xfe);
	FUNC1 (state, 0, state->init_1x93_tab[0]);
	FUNC0(50);
	return 0;
}