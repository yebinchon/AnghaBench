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
struct nand_sdr_timings {int tRC_min; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int must_apply_timings; } ;
struct gpmi_nand_data {TYPE_1__ hw; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct gpmi_nand_data*) ; 
 scalar_t__ FUNC1 (struct nand_sdr_timings const*) ; 
 int FUNC2 (struct nand_sdr_timings const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpmi_nand_data*,struct nand_sdr_timings const*) ; 
 struct gpmi_nand_data* FUNC4 (struct nand_chip*) ; 
 struct nand_sdr_timings* FUNC5 (struct nand_data_interface const*) ; 

__attribute__((used)) static int FUNC6(struct nand_chip *chip, int chipnr,
				     const struct nand_data_interface *conf)
{
	struct gpmi_nand_data *this = FUNC4(chip);
	const struct nand_sdr_timings *sdr;

	/* Retrieve required NAND timings */
	sdr = FUNC5(conf);
	if (FUNC1(sdr))
		return FUNC2(sdr);

	/* Only MX6 GPMI controller can reach EDO timings */
	if (sdr->tRC_min <= 25000 && !FUNC0(this))
		return -ENOTSUPP;

	/* Stop here if this call was just a check */
	if (chipnr < 0)
		return 0;

	/* Do the actual derivation of the controller timings */
	FUNC3(this, sdr);

	this->hw.must_apply_timings = true;

	return 0;
}