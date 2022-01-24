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
struct spi_nor_erase_type {void* opcode; } ;
struct spi_nor_erase_map {struct spi_nor_erase_type* erase_type; } ;
struct TYPE_2__ {struct spi_nor_erase_map erase_map; } ;
struct spi_nor {TYPE_1__ params; void* erase_opcode; int /*<<< orphan*/  program_opcode; int /*<<< orphan*/  read_opcode; } ;

/* Variables and functions */
 int SNOR_ERASE_TYPE_MAX ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_nor*) ; 

__attribute__((used)) static void FUNC4(struct spi_nor *nor)
{
	nor->read_opcode = FUNC2(nor->read_opcode);
	nor->program_opcode = FUNC1(nor->program_opcode);
	nor->erase_opcode = FUNC0(nor->erase_opcode);

	if (!FUNC3(nor)) {
		struct spi_nor_erase_map *map = &nor->params.erase_map;
		struct spi_nor_erase_type *erase;
		int i;

		for (i = 0; i < SNOR_ERASE_TYPE_MAX; i++) {
			erase = &map->erase_type[i];
			erase->opcode =
				FUNC0(erase->opcode);
		}
	}
}