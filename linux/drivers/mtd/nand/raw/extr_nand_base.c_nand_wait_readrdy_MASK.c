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
struct nand_sdr_timings {int /*<<< orphan*/  tR_max; } ;
struct nand_chip {int options; int /*<<< orphan*/  data_interface; } ;

/* Variables and functions */
 int NAND_NEED_READRDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nand_sdr_timings* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nand_chip *chip)
{
	const struct nand_sdr_timings *sdr;

	if (!(chip->options & NAND_NEED_READRDY))
		return;

	sdr = FUNC2(&chip->data_interface);
	FUNC1(FUNC3(chip, FUNC0(sdr->tR_max), 0));
}