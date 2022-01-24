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
struct macb {size_t rx_buffer_size; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 size_t MACB_RX_BUFFER_SIZE ; 
 int RX_BUFFER_MULTIPLE ; 
 int /*<<< orphan*/  FUNC0 (struct macb*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,...) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static void FUNC3(struct macb *bp, size_t size)
{
	if (!FUNC0(bp)) {
		bp->rx_buffer_size = MACB_RX_BUFFER_SIZE;
	} else {
		bp->rx_buffer_size = size;

		if (bp->rx_buffer_size % RX_BUFFER_MULTIPLE) {
			FUNC1(bp->dev,
				   "RX buffer must be multiple of %d bytes, expanding\n",
				   RX_BUFFER_MULTIPLE);
			bp->rx_buffer_size =
				FUNC2(bp->rx_buffer_size, RX_BUFFER_MULTIPLE);
		}
	}

	FUNC1(bp->dev, "mtu [%u] rx_buffer_size [%zu]\n",
		   bp->dev->mtu, bp->rx_buffer_size);
}