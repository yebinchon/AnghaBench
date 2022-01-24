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
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFC_CONFIG1 ; 
 int /*<<< orphan*/  NFC_CONFIG2 ; 
 int NFC_INT ; 
 int NFC_INT_MASK ; 
 int /*<<< orphan*/  NFC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct nand_chip* FUNC1 (struct mtd_info*) ; 
 struct mpc5121_nfc_prv* FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mtd_info *mtd)
{
	struct nand_chip *chip = FUNC1(mtd);
	struct mpc5121_nfc_prv *prv = FUNC2(chip);
	int rv;

	if ((FUNC4(mtd, NFC_CONFIG2) & NFC_INT) == 0) {
		FUNC3(mtd, NFC_CONFIG1, NFC_INT_MASK);
		rv = FUNC5(prv->irq_waitq,
			(FUNC4(mtd, NFC_CONFIG2) & NFC_INT), NFC_TIMEOUT);

		if (!rv)
			FUNC0(prv->dev,
				"Timeout while waiting for interrupt.\n");
	}

	FUNC3(mtd, NFC_CONFIG2, NFC_INT);
}