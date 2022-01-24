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
struct mtk_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFI_STA ; 
 int STA_BUSY ; 
 struct mtk_nfc* FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct mtk_nfc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *nand)
{
	struct mtk_nfc *nfc = FUNC0(nand);

	if (FUNC1(nfc, NFI_STA) & STA_BUSY)
		return 0;

	return 1;
}