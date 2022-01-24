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
typedef  int /*<<< orphan*/  u32 ;
struct spi_nor {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,size_t) ; 
 int FUNC3 (struct spi_nor*,int /*<<< orphan*/ ,size_t,void*) ; 

__attribute__((used)) static int FUNC4(struct spi_nor *nor, u32 addr,
					size_t len, void *buf)
{
	void *dma_safe_buf;
	int ret;

	dma_safe_buf = FUNC1(len, GFP_KERNEL);
	if (!dma_safe_buf)
		return -ENOMEM;

	ret = FUNC3(nor, addr, len, dma_safe_buf);
	FUNC2(buf, dma_safe_buf, len);
	FUNC0(dma_safe_buf);

	return ret;
}