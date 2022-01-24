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
struct dentry {int dummy; } ;
struct coda_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  v4l2_dev; } ;
struct TYPE_2__ {size_t size; scalar_t__ data; } ;
struct coda_aux_buf {size_t size; int /*<<< orphan*/  dentry; TYPE_1__ blob; scalar_t__ vaddr; int /*<<< orphan*/  paddr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct dentry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*,size_t) ; 

int FUNC4(struct coda_dev *dev, struct coda_aux_buf *buf,
		       size_t size, const char *name, struct dentry *parent)
{
	buf->vaddr = FUNC2(dev->dev, size, &buf->paddr,
					GFP_KERNEL);
	if (!buf->vaddr) {
		FUNC3(&dev->v4l2_dev,
			 "Failed to allocate %s buffer of size %zu\n",
			 name, size);
		return -ENOMEM;
	}

	buf->size = size;

	if (name && parent) {
		buf->blob.data = buf->vaddr;
		buf->blob.size = size;
		buf->dentry = FUNC0(name, 0644, parent,
						  &buf->blob);
		if (!buf->dentry)
			FUNC1(dev->dev,
				 "failed to create debugfs entry %s\n", name);
	}

	return 0;
}