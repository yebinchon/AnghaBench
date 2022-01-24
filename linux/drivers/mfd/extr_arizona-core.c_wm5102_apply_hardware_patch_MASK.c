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
struct arizona_sysclk_state {int dummy; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_WRITE_SEQUENCER_CTRL_0 ; 
 int /*<<< orphan*/  ARIZONA_WRITE_SEQUENCER_CTRL_1 ; 
 int ARIZONA_WSEQ_ABORT ; 
 int /*<<< orphan*/  ARIZONA_WSEQ_BUSY ; 
 int ARIZONA_WSEQ_ENA ; 
 int ARIZONA_WSEQ_START ; 
 int FUNC0 (struct arizona*,struct arizona_sysclk_state*) ; 
 int FUNC1 (struct arizona*,struct arizona_sysclk_state*) ; 
 int FUNC2 (struct arizona*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct arizona *arizona)
{
	struct arizona_sysclk_state state;
	int err, ret;

	ret = FUNC1(arizona, &state);
	if (ret)
		return ret;

	/* Start the write sequencer and wait for it to finish */
	ret = FUNC4(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_0,
			   ARIZONA_WSEQ_ENA | ARIZONA_WSEQ_START | 160);
	if (ret) {
		FUNC3(arizona->dev, "Failed to start write sequencer: %d\n",
			ret);
		goto err;
	}

	ret = FUNC2(arizona, 30, ARIZONA_WRITE_SEQUENCER_CTRL_1,
			       ARIZONA_WSEQ_BUSY, 0);
	if (ret)
		FUNC4(arizona->regmap, ARIZONA_WRITE_SEQUENCER_CTRL_0,
			     ARIZONA_WSEQ_ABORT);

err:
	err = FUNC0(arizona, &state);

	return ret ?: err;
}