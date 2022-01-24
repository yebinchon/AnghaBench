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
struct onenand_chip {int page_shift; scalar_t__ base; int /*<<< orphan*/  (* write_word ) (int,scalar_t__) ;TYPE_1__* bufferram; } ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int loff_t ;
struct TYPE_2__ {int blockpage; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct onenand_chip*) ; 
 scalar_t__ FUNC1 (struct onenand_chip*) ; 
 scalar_t__ FUNC2 (struct onenand_chip*) ; 
 unsigned int FUNC3 (struct onenand_chip*) ; 
 scalar_t__ ONENAND_REG_START_ADDRESS2 ; 
 int /*<<< orphan*/  FUNC4 (struct onenand_chip*) ; 
 int FUNC5 (struct onenand_chip*,int) ; 
 int FUNC6 (struct onenand_chip*,int) ; 
 int FUNC7 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct mtd_info *mtd, loff_t addr)
{
	struct onenand_chip *this = mtd->priv;
	int blockpage, found = 0;
	unsigned int i;

	if (FUNC1(this))
		blockpage = FUNC7(mtd, addr);
	else
		blockpage = (int) (addr >> this->page_shift);

	/* Is there valid data? */
	i = FUNC0(this);
	if (this->bufferram[i].blockpage == blockpage)
		found = 1;
	else {
		/* Check another BufferRAM */
		i = FUNC3(this);
		if (this->bufferram[i].blockpage == blockpage) {
			FUNC4(this);
			found = 1;
		}
	}

	if (found && FUNC2(this)) {
		/* Select DataRAM for DDP */
		int block = FUNC5(this, addr);
		int value = FUNC6(this, block);
		this->write_word(value, this->base + ONENAND_REG_START_ADDRESS2);
	}

	return found;
}