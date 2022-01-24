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
typedef  scalar_t__ u64 ;
struct octeon_soft_command {int /*<<< orphan*/  node; int /*<<< orphan*/  size; scalar_t__ dma_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  head; int /*<<< orphan*/  alloc_buf_count; int /*<<< orphan*/  lock; } ;
struct octeon_device {TYPE_1__ sc_buf_pool; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_SOFT_COMMAND_BUFFERS ; 
 int /*<<< orphan*/  SOFT_COMMAND_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct octeon_device *oct)
{
	int i;
	u64 dma_addr;
	struct octeon_soft_command *sc;

	FUNC0(&oct->sc_buf_pool.head);
	FUNC5(&oct->sc_buf_pool.lock);
	FUNC1(&oct->sc_buf_pool.alloc_buf_count, 0);

	for (i = 0; i < MAX_SOFT_COMMAND_BUFFERS; i++) {
		sc = (struct octeon_soft_command *)
			FUNC2(oct,
				      SOFT_COMMAND_BUFFER_SIZE,
					  (dma_addr_t *)&dma_addr);
		if (!sc) {
			FUNC4(oct);
			return 1;
		}

		sc->dma_addr = dma_addr;
		sc->size = SOFT_COMMAND_BUFFER_SIZE;

		FUNC3(&sc->node, &oct->sc_buf_pool.head);
	}

	return 0;
}