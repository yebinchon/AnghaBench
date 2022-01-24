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
struct genwqe_file {int /*<<< orphan*/  map_lock; } ;
struct dma_mapping {int /*<<< orphan*/  card_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct genwqe_file *cfile,
			      struct dma_mapping *dma_map)
{
	unsigned long flags;

	FUNC1(&cfile->map_lock, flags);
	FUNC0(&dma_map->card_list);
	FUNC2(&cfile->map_lock, flags);
}