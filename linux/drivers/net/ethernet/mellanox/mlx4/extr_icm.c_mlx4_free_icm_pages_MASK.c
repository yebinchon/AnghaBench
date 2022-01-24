#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_icm_chunk {scalar_t__ nsg; int npages; TYPE_3__* sg; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_6__ {TYPE_1__* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(struct mlx4_dev *dev, struct mlx4_icm_chunk *chunk)
{
	int i;

	if (chunk->nsg > 0)
		FUNC1(&dev->persist->pdev->dev, chunk->sg, chunk->npages,
			     DMA_BIDIRECTIONAL);

	for (i = 0; i < chunk->npages; ++i)
		FUNC0(FUNC3(&chunk->sg[i]),
			     FUNC2(chunk->sg[i].length));
}