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
struct page {int dummy; } ;
struct cx23885_audio_dev {struct cx23885_audio_buffer* buf; } ;
struct cx23885_audio_buffer {int nr_pages; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/ * sglist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 struct page* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct cx23885_audio_dev *chip, int nr_pages)
{
	struct cx23885_audio_buffer *buf = chip->buf;
	struct page *pg;
	int i;

	buf->vaddr = FUNC6(nr_pages << PAGE_SHIFT);
	if (NULL == buf->vaddr) {
		FUNC1(1, "vmalloc_32(%d pages) failed\n", nr_pages);
		return -ENOMEM;
	}

	FUNC1(1, "vmalloc is at addr %p, size=%d\n",
		*buf->vaddr, nr_pages << PAGE_SHIFT);

	FUNC2(buf->vaddr, 0, nr_pages << PAGE_SHIFT);
	buf->nr_pages = nr_pages;

	buf->sglist = FUNC8(FUNC0(sizeof(*buf->sglist), buf->nr_pages));
	if (NULL == buf->sglist)
		goto vzalloc_err;

	FUNC3(buf->sglist, buf->nr_pages);
	for (i = 0; i < buf->nr_pages; i++) {
		pg = FUNC7(buf->vaddr + i * PAGE_SIZE);
		if (NULL == pg)
			goto vmalloc_to_page_err;
		FUNC4(&buf->sglist[i], pg, PAGE_SIZE, 0);
	}
	return 0;

vmalloc_to_page_err:
	FUNC5(buf->sglist);
	buf->sglist = NULL;
vzalloc_err:
	FUNC5(buf->vaddr);
	buf->vaddr = NULL;
	return -ENOMEM;
}