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
struct s5k5baf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_PATTERN_HEIGHT ; 
 int /*<<< orphan*/  REG_PATTERN_PARAM ; 
 int /*<<< orphan*/  REG_PATTERN_SET ; 
 int /*<<< orphan*/  REG_PATTERN_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct s5k5baf *state, int id)
{
	FUNC0(state, REG_PATTERN_WIDTH, 800);
	FUNC0(state, REG_PATTERN_HEIGHT, 511);
	FUNC0(state, REG_PATTERN_PARAM, 0);
	FUNC0(state, REG_PATTERN_SET, id);
}