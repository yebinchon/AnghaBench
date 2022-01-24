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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {unsigned int dma_addr; int /*<<< orphan*/  addr; } ;
struct ef4_special_buffer {unsigned int entries; unsigned int index; TYPE_1__ buf; } ;
struct ef4_nic {unsigned int next_buffer_table; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int EF4_BUF_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct ef4_nic*,TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ef4_nic *efx,
				    struct ef4_special_buffer *buffer,
				    unsigned int len)
{
	len = FUNC0(len, EF4_BUF_SIZE);

	if (FUNC2(efx, &buffer->buf, len, GFP_KERNEL))
		return -ENOMEM;
	buffer->entries = len / EF4_BUF_SIZE;
	FUNC1(buffer->buf.dma_addr & (EF4_BUF_SIZE - 1));

	/* Select new buffer ID */
	buffer->index = efx->next_buffer_table;
	efx->next_buffer_table += buffer->entries;

	FUNC3(efx, probe, efx->net_dev,
		  "allocating special buffers %d-%d at %llx+%x "
		  "(virt %p phys %llx)\n", buffer->index,
		  buffer->index + buffer->entries - 1,
		  (u64)buffer->buf.dma_addr, len,
		  buffer->buf.addr, (u64)FUNC4(buffer->buf.addr));

	return 0;
}