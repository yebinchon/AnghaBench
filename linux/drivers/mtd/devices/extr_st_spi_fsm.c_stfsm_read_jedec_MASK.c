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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct stfsm_seq {int dummy; } ;
struct stfsm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stfsm*,struct stfsm_seq const*) ; 
 int /*<<< orphan*/  FUNC2 (struct stfsm*,int /*<<< orphan*/ *,int) ; 
 struct stfsm_seq stfsm_seq_read_jedec ; 
 int /*<<< orphan*/  FUNC3 (struct stfsm*) ; 

__attribute__((used)) static void FUNC4(struct stfsm *fsm, uint8_t *jedec)
{
	const struct stfsm_seq *seq = &stfsm_seq_read_jedec;
	uint32_t tmp[2];

	FUNC1(fsm, seq);

	FUNC2(fsm, tmp, 8);

	FUNC0(jedec, tmp, 5);

	FUNC3(fsm);
}