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
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
struct mlx4_buf {int nbufs; int npages; TYPE_4__* page_list; int /*<<< orphan*/  page_shift; TYPE_1__ direct; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  map; int /*<<< orphan*/  buf; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,int,struct mlx4_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,int,struct mlx4_buf*) ; 

int FUNC5(struct mlx4_dev *dev, int size, int max_direct,
		   struct mlx4_buf *buf)
{
	if (size <= max_direct) {
		return FUNC3(dev, size, buf);
	} else {
		dma_addr_t t;
		int i;

		buf->direct.buf = NULL;
		buf->nbufs      = FUNC0(size, PAGE_SIZE);
		buf->npages	= buf->nbufs;
		buf->page_shift  = PAGE_SHIFT;
		buf->page_list   = FUNC2(buf->nbufs, sizeof(*buf->page_list),
					   GFP_KERNEL);
		if (!buf->page_list)
			return -ENOMEM;

		for (i = 0; i < buf->nbufs; ++i) {
			buf->page_list[i].buf =
				FUNC1(&dev->persist->pdev->dev,
						   PAGE_SIZE, &t, GFP_KERNEL);
			if (!buf->page_list[i].buf)
				goto err_free;

			buf->page_list[i].map = t;
		}
	}

	return 0;

err_free:
	FUNC4(dev, size, buf);

	return -ENOMEM;
}