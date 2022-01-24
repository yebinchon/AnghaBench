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
struct scatterlist {int dummy; } ;
struct gpmi_nand_data {void const* data_buffer_dma; int /*<<< orphan*/  dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int DMA_TO_DEVICE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct scatterlist*,int,int) ; 
 int FUNC1 (struct gpmi_nand_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (void const*,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void const*,int) ; 
 scalar_t__ FUNC5 (void const*) ; 

__attribute__((used)) static bool FUNC6(struct gpmi_nand_data *this, const void *buf,
			     int raw_len, struct scatterlist *sgl,
			     enum dma_data_direction dr)
{
	int ret;
	int len = FUNC1(this, raw_len);

	/* first try to map the upper buffer directly */
	if (FUNC5(buf) && !FUNC3(buf)) {
		FUNC4(sgl, buf, len);
		ret = FUNC0(this->dev, sgl, 1, dr);
		if (ret == 0)
			goto map_fail;

		return true;
	}

map_fail:
	/* We have to use our own DMA buffer. */
	FUNC4(sgl, this->data_buffer_dma, len);

	if (dr == DMA_TO_DEVICE && buf != this->data_buffer_dma)
		FUNC2(this->data_buffer_dma, buf, len);

	FUNC0(this->dev, sgl, 1, dr);

	return false;
}