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
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct dma_mapping {int dummy; } ;
struct ddcb_requ {TYPE_1__* sgls; struct dma_mapping* dma_mappings; } ;
struct TYPE_2__ {int /*<<< orphan*/ * sgl; } ;

/* Variables and functions */
 unsigned int DDCB_FIXUPS ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_file*,struct dma_mapping*) ; 
 scalar_t__ FUNC1 (struct dma_mapping*) ; 
 int /*<<< orphan*/  FUNC2 (struct genwqe_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_dev*,struct dma_mapping*) ; 

__attribute__((used)) static int FUNC4(struct genwqe_file *cfile, struct ddcb_requ *req)
{
	unsigned int i;
	struct dma_mapping *dma_map;
	struct genwqe_dev *cd = cfile->cd;

	for (i = 0; i < DDCB_FIXUPS; i++) {
		dma_map = &req->dma_mappings[i];

		if (FUNC1(dma_map)) {
			FUNC0(cfile, dma_map);
			FUNC3(cd, dma_map);
		}
		if (req->sgls[i].sgl != NULL)
			FUNC2(cd, &req->sgls[i]);
	}
	return 0;
}