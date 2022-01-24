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
struct stfsm_seq {int dummy; } ;
struct stfsm {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stfsm*,struct stfsm_seq const*) ; 
 struct stfsm_seq stfsm_seq_erase_chip ; 
 int FUNC2 (struct stfsm*) ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*) ; 

__attribute__((used)) static int FUNC4(struct stfsm *fsm)
{
	const struct stfsm_seq *seq = &stfsm_seq_erase_chip;

	FUNC0(fsm->dev, "erasing chip\n");

	FUNC1(fsm, seq);

	FUNC3(fsm);

	return FUNC2(fsm);
}