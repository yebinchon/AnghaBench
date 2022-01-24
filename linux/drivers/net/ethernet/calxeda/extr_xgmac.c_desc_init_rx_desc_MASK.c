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
struct xgmac_dma_desc {int /*<<< orphan*/  buf_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXDESC1_END_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgmac_dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgmac_dma_desc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC3(struct xgmac_dma_desc *p, int ring_size,
				     int buf_sz)
{
	struct xgmac_dma_desc *end = p + ring_size - 1;

	FUNC2(p, 0, sizeof(*p) * ring_size);

	for (; p <= end; p++)
		FUNC1(p, buf_sz);

	end->buf_size |= FUNC0(RXDESC1_END_RING);
}