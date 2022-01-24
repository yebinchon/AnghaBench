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
typedef  int u16 ;
struct nand_chip {int options; } ;
struct qcom_nand_host {struct nand_chip chip; } ;
struct qcom_nand_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_ADDR0 ; 
 int /*<<< orphan*/  NAND_ADDR1 ; 
 int NAND_BUSWIDTH_16 ; 
 struct qcom_nand_controller* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct qcom_nand_controller*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct qcom_nand_host *host, u16 column, int page)
{
	struct nand_chip *chip = &host->chip;
	struct qcom_nand_controller *nandc = FUNC0(chip);

	if (chip->options & NAND_BUSWIDTH_16)
		column >>= 1;

	FUNC1(nandc, NAND_ADDR0, page << 16 | column);
	FUNC1(nandc, NAND_ADDR1, page >> 16 & 0xff);
}