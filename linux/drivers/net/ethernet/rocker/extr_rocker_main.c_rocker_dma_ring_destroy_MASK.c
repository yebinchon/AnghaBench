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
struct rocker_dma_ring_info {int size; int /*<<< orphan*/  desc_info; int /*<<< orphan*/  mapaddr; int /*<<< orphan*/  desc; int /*<<< orphan*/  type; } ;
struct rocker_desc {int dummy; } ;
struct rocker {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct rocker *rocker,
				    const struct rocker_dma_ring_info *info)
{
	FUNC3(rocker, FUNC0(info->type), 0);

	FUNC2(rocker->pdev,
			    info->size * sizeof(struct rocker_desc),
			    info->desc, info->mapaddr);
	FUNC1(info->desc_info);
}