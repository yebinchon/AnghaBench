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
struct nand_chip {int /*<<< orphan*/  cur_cs; } ;
struct denali_controller {scalar_t__ dma_avail; } ;

/* Variables and functions */
 int FUNC0 (struct denali_controller*,void*,size_t,int,int) ; 
 int FUNC1 (struct denali_controller*,void*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 struct denali_controller* FUNC3 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip, void *buf, size_t size,
			    int page, bool write)
{
	struct denali_controller *denali = FUNC3(chip);

	FUNC2(chip, chip->cur_cs);

	if (denali->dma_avail)
		return FUNC0(denali, buf, size, page, write);
	else
		return FUNC1(denali, buf, size, page, write);
}