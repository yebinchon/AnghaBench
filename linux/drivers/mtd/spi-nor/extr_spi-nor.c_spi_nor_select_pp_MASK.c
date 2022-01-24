#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct spi_nor_pp_command {int /*<<< orphan*/  proto; int /*<<< orphan*/  opcode; } ;
struct TYPE_2__ {struct spi_nor_pp_command* page_programs; } ;
struct spi_nor {int /*<<< orphan*/  write_proto; int /*<<< orphan*/  program_opcode; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int SNOR_HWCAPS_PP_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spi_nor *nor,
			     u32 shared_hwcaps)
{
	int cmd, best_match = FUNC1(shared_hwcaps & SNOR_HWCAPS_PP_MASK) - 1;
	const struct spi_nor_pp_command *pp;

	if (best_match < 0)
		return -EINVAL;

	cmd = FUNC2(FUNC0(best_match));
	if (cmd < 0)
		return -EINVAL;

	pp = &nor->params.page_programs[cmd];
	nor->program_opcode = pp->opcode;
	nor->write_proto = pp->proto;
	return 0;
}