#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {TYPE_2__* sgl; } ;
struct TYPE_3__ {int /*<<< orphan*/  vb2_buf; } ;
struct saa7134_buf {TYPE_1__ vb2; } ;
struct TYPE_4__ {scalar_t__ offset; } ;

/* Variables and functions */
 int FUNC0 (struct saa7134_buf*) ; 
 struct sg_table* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

unsigned long FUNC2(struct saa7134_buf *buf)
{
	unsigned long base;
	struct sg_table *dma = FUNC1(&buf->vb2.vb2_buf, 0);

	base  = FUNC0(buf) * 4096;
	base += dma->sgl[0].offset;
	return base;
}