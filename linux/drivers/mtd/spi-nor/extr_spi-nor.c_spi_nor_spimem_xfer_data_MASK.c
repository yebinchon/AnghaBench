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
struct spi_nor {int bouncebuf_size; void* bouncebuf; int /*<<< orphan*/  spimem; } ;
struct TYPE_3__ {void* in; void* out; } ;
struct TYPE_4__ {scalar_t__ dir; int nbytes; TYPE_1__ buf; } ;
struct spi_mem_op {TYPE_2__ data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ SPI_MEM_DATA_IN ; 
 int /*<<< orphan*/  FUNC0 (void*,void const*,int) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_mem_op*) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 

__attribute__((used)) static ssize_t FUNC5(struct spi_nor *nor,
					struct spi_mem_op *op)
{
	bool usebouncebuf = false;
	void *rdbuf = NULL;
	const void *buf;
	int ret;

	if (op->data.dir == SPI_MEM_DATA_IN)
		buf = op->data.buf.in;
	else
		buf = op->data.buf.out;

	if (FUNC1(buf) || !FUNC4(buf))
		usebouncebuf = true;

	if (usebouncebuf) {
		if (op->data.nbytes > nor->bouncebuf_size)
			op->data.nbytes = nor->bouncebuf_size;

		if (op->data.dir == SPI_MEM_DATA_IN) {
			rdbuf = op->data.buf.in;
			op->data.buf.in = nor->bouncebuf;
		} else {
			op->data.buf.out = nor->bouncebuf;
			FUNC0(nor->bouncebuf, buf,
			       op->data.nbytes);
		}
	}

	ret = FUNC2(nor->spimem, op);
	if (ret)
		return ret;

	ret = FUNC3(nor->spimem, op);
	if (ret)
		return ret;

	if (usebouncebuf && op->data.dir == SPI_MEM_DATA_IN)
		FUNC0(rdbuf, nor->bouncebuf, op->data.nbytes);

	return op->data.nbytes;
}