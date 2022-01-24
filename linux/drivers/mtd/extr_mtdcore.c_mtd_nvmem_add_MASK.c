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
struct nvmem_config {int id; int word_size; int stride; int read_only; int root_only; int no_of_node; struct mtd_info* priv; int /*<<< orphan*/  size; int /*<<< orphan*/  reg_read; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; int /*<<< orphan*/ * dev; } ;
struct mtd_info {int /*<<< orphan*/ * nvmem; int /*<<< orphan*/  dev; int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mtd_nvmem_reg_read ; 
 int /*<<< orphan*/ * FUNC3 (struct nvmem_config*) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd)
{
	struct nvmem_config config = {};

	config.id = -1;
	config.dev = &mtd->dev;
	config.name = mtd->name;
	config.owner = THIS_MODULE;
	config.reg_read = mtd_nvmem_reg_read;
	config.size = mtd->size;
	config.word_size = 1;
	config.stride = 1;
	config.read_only = true;
	config.root_only = true;
	config.no_of_node = true;
	config.priv = mtd;

	mtd->nvmem = FUNC3(&config);
	if (FUNC0(mtd->nvmem)) {
		/* Just ignore if there is no NVMEM support in the kernel */
		if (FUNC1(mtd->nvmem) == -EOPNOTSUPP) {
			mtd->nvmem = NULL;
		} else {
			FUNC2(&mtd->dev, "Failed to register NVMEM device\n");
			return FUNC1(mtd->nvmem);
		}
	}

	return 0;
}