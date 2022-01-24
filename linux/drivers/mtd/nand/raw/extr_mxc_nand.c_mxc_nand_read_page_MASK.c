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
typedef  int /*<<< orphan*/  uint8_t ;
struct nand_chip {void* oob_poi; } ;
struct mxc_nand_host {TYPE_1__* devtype_data; } ;
struct TYPE_2__ {int (* read_page ) (struct nand_chip*,int /*<<< orphan*/ *,void*,int,int) ;} ;

/* Variables and functions */
 struct mxc_nand_host* FUNC0 (struct nand_chip*) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ *,void*,int,int) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip, uint8_t *buf,
			      int oob_required, int page)
{
	struct mxc_nand_host *host = FUNC0(chip);
	void *oob_buf;

	if (oob_required)
		oob_buf = chip->oob_poi;
	else
		oob_buf = NULL;

	return host->devtype_data->read_page(chip, buf, oob_buf, 1, page);
}