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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct spi_nor_erase_type {int dummy; } ;
struct spi_nor_erase_region {int offset; scalar_t__ size; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct spi_nor_erase_map {int dummy; } ;
struct spi_nor_erase_command {int offset; scalar_t__ size; int /*<<< orphan*/  count; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct spi_nor_erase_map erase_map; } ;
struct spi_nor {TYPE_1__ params; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct spi_nor_erase_region*) ; 
 int FUNC1 (struct spi_nor_erase_region*) ; 
 int SNOR_OVERLAID_REGION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 
 struct spi_nor_erase_type* FUNC4 (struct spi_nor_erase_map const*,struct spi_nor_erase_region*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct spi_nor_erase_region* FUNC5 (struct spi_nor_erase_map const*,scalar_t__) ; 
 struct spi_nor_erase_region* FUNC6 (struct spi_nor_erase_region*,struct spi_nor_erase_type const*) ; 
 scalar_t__ FUNC7 (struct spi_nor_erase_region*) ; 
 struct spi_nor_erase_region* FUNC8 (struct spi_nor_erase_region*) ; 

__attribute__((used)) static int FUNC9(struct spi_nor *nor,
				       struct list_head *erase_list,
				       u64 addr, u32 len)
{
	const struct spi_nor_erase_map *map = &nor->params.erase_map;
	const struct spi_nor_erase_type *erase, *prev_erase = NULL;
	struct spi_nor_erase_region *region;
	struct spi_nor_erase_command *cmd = NULL;
	u64 region_end;
	int ret = -EINVAL;

	region = FUNC5(map, addr);
	if (FUNC0(region))
		return FUNC1(region);

	region_end = FUNC7(region);

	while (len) {
		erase = FUNC4(map, region, addr, len);
		if (!erase)
			goto destroy_erase_cmd_list;

		if (prev_erase != erase ||
		    region->offset & SNOR_OVERLAID_REGION) {
			cmd = FUNC6(region, erase);
			if (FUNC0(cmd)) {
				ret = FUNC1(cmd);
				goto destroy_erase_cmd_list;
			}

			FUNC2(&cmd->list, erase_list);
		} else {
			cmd->count++;
		}

		addr += cmd->size;
		len -= cmd->size;

		if (len && addr >= region_end) {
			region = FUNC8(region);
			if (!region)
				goto destroy_erase_cmd_list;
			region_end = FUNC7(region);
		}

		prev_erase = erase;
	}

	return 0;

destroy_erase_cmd_list:
	FUNC3(erase_list);
	return ret;
}