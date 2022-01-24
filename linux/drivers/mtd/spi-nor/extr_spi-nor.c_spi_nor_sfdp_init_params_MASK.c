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
struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {struct spi_nor_flash_parameter params; int /*<<< orphan*/  flags; scalar_t__ addr_width; } ;
typedef  int /*<<< orphan*/  sfdp_params ;

/* Variables and functions */
 int /*<<< orphan*/  SNOR_F_4B_OPCODES ; 
 int /*<<< orphan*/  FUNC0 (struct spi_nor_flash_parameter*,struct spi_nor_flash_parameter*,int) ; 
 scalar_t__ FUNC1 (struct spi_nor*,struct spi_nor_flash_parameter*) ; 

__attribute__((used)) static void FUNC2(struct spi_nor *nor)
{
	struct spi_nor_flash_parameter sfdp_params;

	FUNC0(&sfdp_params, &nor->params, sizeof(sfdp_params));

	if (FUNC1(nor, &sfdp_params)) {
		nor->addr_width = 0;
		nor->flags &= ~SNOR_F_4B_OPCODES;
	} else {
		FUNC0(&nor->params, &sfdp_params, sizeof(nor->params));
	}
}