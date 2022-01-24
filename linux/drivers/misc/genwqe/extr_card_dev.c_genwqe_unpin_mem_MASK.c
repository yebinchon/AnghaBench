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
struct genwqe_mem {int addr; scalar_t__ size; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct dma_mapping {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_file*,struct dma_mapping*) ; 
 struct dma_mapping* FUNC1 (struct genwqe_file*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct genwqe_dev*,struct dma_mapping*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_mapping*) ; 
 unsigned long FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct genwqe_file *cfile, struct genwqe_mem *m)
{
	struct genwqe_dev *cd = cfile->cd;
	struct dma_mapping *dma_map;
	unsigned long map_addr;
	unsigned long map_size;

	if (m->addr == 0x0)
		return -EINVAL;

	map_addr = (m->addr & PAGE_MASK);
	map_size = FUNC4(m->size + (m->addr & ~PAGE_MASK), PAGE_SIZE);

	dma_map = FUNC1(cfile, map_addr, map_size, NULL);
	if (dma_map == NULL)
		return -ENOENT;

	FUNC0(cfile, dma_map);
	FUNC2(cd, dma_map);
	FUNC3(dma_map);
	return 0;
}