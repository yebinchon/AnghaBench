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
struct coda_dev {int /*<<< orphan*/  dev; } ;
struct coda_aux_buf {int /*<<< orphan*/ * dentry; scalar_t__ size; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC2(struct coda_dev *dev,
		       struct coda_aux_buf *buf)
{
	if (buf->vaddr) {
		FUNC1(dev->dev, buf->size, buf->vaddr, buf->paddr);
		buf->vaddr = NULL;
		buf->size = 0;
		FUNC0(buf->dentry);
		buf->dentry = NULL;
	}
}