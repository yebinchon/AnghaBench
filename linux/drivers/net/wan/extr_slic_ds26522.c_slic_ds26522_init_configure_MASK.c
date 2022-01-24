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
typedef  scalar_t__ u16 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DS26522_BERT_ADDR_END ; 
 scalar_t__ DS26522_BERT_ADDR_START ; 
 scalar_t__ DS26522_GFCR_ADDR ; 
 int DS26522_GFCR_BPCLK_2048KHZ ; 
 scalar_t__ DS26522_GFSRR_ADDR ; 
 int DS26522_GFSRR_NORMAL ; 
 int DS26522_GFSRR_RESET ; 
 scalar_t__ DS26522_GLSRR_ADDR ; 
 int DS26522_GLSRR_NORMAL ; 
 int DS26522_GLSRR_RESET ; 
 scalar_t__ DS26522_GTCCR_ADDR ; 
 int DS26522_GTCCR_BFREQSEL_2048KHZ ; 
 int DS26522_GTCCR_BPREFSEL_REFCLKIN ; 
 int DS26522_GTCCR_FREQSEL_2048KHZ ; 
 int DS26522_GTCR1 ; 
 scalar_t__ DS26522_GTCR1_ADDR ; 
 scalar_t__ DS26522_GTCR2_ADDR ; 
 int DS26522_GTCR2_TSSYNCOUT ; 
 scalar_t__ DS26522_LIU_ADDR_END ; 
 scalar_t__ DS26522_LIU_ADDR_START ; 
 scalar_t__ DS26522_RF_ADDR_END ; 
 scalar_t__ DS26522_RF_ADDR_START ; 
 scalar_t__ DS26522_RMMR_ADDR ; 
 int DS26522_RMMR_SFTRST ; 
 scalar_t__ DS26522_TF_ADDR_END ; 
 scalar_t__ DS26522_TF_ADDR_START ; 
 scalar_t__ DS26522_TMMR_ADDR ; 
 int DS26522_TMMR_SFTRST ; 
 int /*<<< orphan*/  FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_device*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	u16 addr;

	/* set clock */
	FUNC1(spi, DS26522_GTCCR_ADDR, DS26522_GTCCR_BPREFSEL_REFCLKIN |
			DS26522_GTCCR_BFREQSEL_2048KHZ |
			DS26522_GTCCR_FREQSEL_2048KHZ);
	FUNC1(spi, DS26522_GTCR2_ADDR, DS26522_GTCR2_TSSYNCOUT);
	FUNC1(spi, DS26522_GFCR_ADDR, DS26522_GFCR_BPCLK_2048KHZ);

	/* set gtcr */
	FUNC1(spi, DS26522_GTCR1_ADDR, DS26522_GTCR1);

	/* Global LIU Software Reset Register */
	FUNC1(spi, DS26522_GLSRR_ADDR, DS26522_GLSRR_RESET);

	/* Global Framer and BERT Software Reset Register */
	FUNC1(spi, DS26522_GFSRR_ADDR, DS26522_GFSRR_RESET);

	FUNC2(100, 120);

	FUNC1(spi, DS26522_GLSRR_ADDR, DS26522_GLSRR_NORMAL);
	FUNC1(spi, DS26522_GFSRR_ADDR, DS26522_GFSRR_NORMAL);

	/* Perform RX/TX SRESET,Reset receiver */
	FUNC1(spi, DS26522_RMMR_ADDR, DS26522_RMMR_SFTRST);

	/* Reset tranceiver */
	FUNC1(spi, DS26522_TMMR_ADDR, DS26522_TMMR_SFTRST);

	FUNC2(100, 120);

	/* Zero all Framer Registers */
	for (addr = DS26522_RF_ADDR_START; addr <= DS26522_RF_ADDR_END;
	     addr++)
		FUNC1(spi, addr, 0);

	for (addr = DS26522_TF_ADDR_START; addr <= DS26522_TF_ADDR_END;
	     addr++)
		FUNC1(spi, addr, 0);

	for (addr = DS26522_LIU_ADDR_START; addr <= DS26522_LIU_ADDR_END;
	     addr++)
		FUNC1(spi, addr, 0);

	for (addr = DS26522_BERT_ADDR_START; addr <= DS26522_BERT_ADDR_END;
	     addr++)
		FUNC1(spi, addr, 0);

	/* setup ds26522 for E1 specification */
	FUNC0(spi);

	FUNC1(spi, DS26522_GTCR1_ADDR, 0x00);

	return 0;
}