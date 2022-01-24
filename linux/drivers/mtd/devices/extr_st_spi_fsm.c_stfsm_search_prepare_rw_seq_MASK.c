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
struct seq_rw_config {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct stfsm*,struct stfsm_seq*,struct seq_rw_config*) ; 
 struct seq_rw_config* FUNC2 (struct stfsm*,struct seq_rw_config*) ; 

__attribute__((used)) static int FUNC3(struct stfsm *fsm,
				       struct stfsm_seq *seq,
				       struct seq_rw_config *cfgs)
{
	struct seq_rw_config *config;

	config = FUNC2(fsm, cfgs);
	if (!config) {
		FUNC0(fsm->dev, "failed to find suitable config\n");
		return -EINVAL;
	}

	FUNC1(fsm, seq, config);

	return 0;
}