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
typedef  int u32 ;
struct ena_tx_buffer {int num_of_bufs; scalar_t__ map_linear_data; struct ena_com_buf* bufs; } ;
struct ena_ring {int /*<<< orphan*/  dev; } ;
struct ena_com_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ena_com_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_com_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  paddr ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct ena_ring *tx_ring,
				    struct ena_tx_buffer *tx_info)
{
	struct ena_com_buf *ena_buf;
	u32 cnt;
	int i;

	ena_buf = tx_info->bufs;
	cnt = tx_info->num_of_bufs;

	if (FUNC4(!cnt))
		return;

	if (tx_info->map_linear_data) {
		FUNC3(tx_ring->dev,
				 FUNC0(ena_buf, paddr),
				 FUNC1(ena_buf, len),
				 DMA_TO_DEVICE);
		ena_buf++;
		cnt--;
	}

	/* unmap remaining mapped pages */
	for (i = 0; i < cnt; i++) {
		FUNC2(tx_ring->dev, FUNC0(ena_buf, paddr),
			       FUNC1(ena_buf, len), DMA_TO_DEVICE);
		ena_buf++;
	}
}