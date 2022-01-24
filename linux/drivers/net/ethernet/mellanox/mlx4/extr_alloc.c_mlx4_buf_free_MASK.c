#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlx4_dev {TYPE_3__* persist; } ;
struct TYPE_5__ {int /*<<< orphan*/  map; scalar_t__ buf; } ;
struct mlx4_buf {int nbufs; TYPE_4__* page_list; TYPE_1__ direct; } ;
struct TYPE_8__ {int /*<<< orphan*/  map; scalar_t__ buf; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 

void FUNC2(struct mlx4_dev *dev, int size, struct mlx4_buf *buf)
{
	if (buf->nbufs == 1) {
		FUNC0(&dev->persist->pdev->dev, size,
				  buf->direct.buf, buf->direct.map);
	} else {
		int i;

		for (i = 0; i < buf->nbufs; ++i)
			if (buf->page_list[i].buf)
				FUNC0(&dev->persist->pdev->dev,
						  PAGE_SIZE,
						  buf->page_list[i].buf,
						  buf->page_list[i].map);
		FUNC1(buf->page_list);
	}
}