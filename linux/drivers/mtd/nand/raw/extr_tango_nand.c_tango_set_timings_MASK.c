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
typedef  int /*<<< orphan*/  u32 ;
struct tango_nfc {int freq_kHz; } ;
struct tango_chip {void* timing2; void* timing1; } ;
struct nand_sdr_timings {scalar_t__ tRHZ_max; scalar_t__ tREH_min; scalar_t__ tRC_min; scalar_t__ tREA_max; scalar_t__ tWP_min; scalar_t__ tWC_min; scalar_t__ tWB_max; scalar_t__ tCEA_max; } ;
struct nand_data_interface {int dummy; } ;
struct nand_chip {int /*<<< orphan*/  controller; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nand_sdr_timings const*) ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int FUNC1 (struct nand_sdr_timings const*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nand_sdr_timings* FUNC3 (struct nand_data_interface const*) ; 
 struct tango_chip* FUNC4 (struct nand_chip*) ; 
 struct tango_nfc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct nand_chip *chip, int csline,
			     const struct nand_data_interface *conf)
{
	const struct nand_sdr_timings *sdr = FUNC3(conf);
	struct tango_nfc *nfc = FUNC5(chip->controller);
	struct tango_chip *tchip = FUNC4(chip);
	u32 Trdy, Textw, Twc, Twpw, Tacc, Thold, Trpw, Textr;
	int kHz = nfc->freq_kHz;

	if (FUNC0(sdr))
		return FUNC1(sdr);

	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	Trdy = FUNC6(kHz, sdr->tCEA_max - sdr->tREA_max);
	Textw = FUNC6(kHz, sdr->tWB_max);
	Twc = FUNC6(kHz, sdr->tWC_min);
	Twpw = FUNC6(kHz, sdr->tWC_min - sdr->tWP_min);

	Tacc = FUNC6(kHz, sdr->tREA_max);
	Thold = FUNC6(kHz, sdr->tREH_min);
	Trpw = FUNC6(kHz, sdr->tRC_min - sdr->tREH_min);
	Textr = FUNC6(kHz, sdr->tRHZ_max);

	tchip->timing1 = FUNC2(Trdy, Textw, Twc, Twpw);
	tchip->timing2 = FUNC2(Tacc, Thold, Trpw, Textr);

	return 0;
}