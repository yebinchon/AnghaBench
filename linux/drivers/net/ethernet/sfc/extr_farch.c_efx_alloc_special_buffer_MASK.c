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
struct siena_nic_data {scalar_t__ vf_buftbl_base; } ;
struct TYPE_2__ {unsigned int dma_addr; int /*<<< orphan*/  addr; } ;
struct efx_special_buffer {unsigned int entries; scalar_t__ index; TYPE_1__ buf; } ;
struct efx_nic {scalar_t__ next_buffer_table; int /*<<< orphan*/  net_dev; struct siena_nic_data* nic_data; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int EFX_BUF_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct efx_nic*,TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  probe ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct efx_nic *efx,
				    struct efx_special_buffer *buffer,
				    unsigned int len)
{
#ifdef CONFIG_SFC_SRIOV
	struct siena_nic_data *nic_data = efx->nic_data;
#endif
	len = FUNC0(len, EFX_BUF_SIZE);

	if (FUNC2(efx, &buffer->buf, len, GFP_KERNEL))
		return -ENOMEM;
	buffer->entries = len / EFX_BUF_SIZE;
	FUNC1(buffer->buf.dma_addr & (EFX_BUF_SIZE - 1));

	/* Select new buffer ID */
	buffer->index = efx->next_buffer_table;
	efx->next_buffer_table += buffer->entries;
#ifdef CONFIG_SFC_SRIOV
	BUG_ON(efx_siena_sriov_enabled(efx) &&
	       nic_data->vf_buftbl_base < efx->next_buffer_table);
#endif

	FUNC4(efx, probe, efx->net_dev,
		  "allocating special buffers %d-%d at %llx+%x "
		  "(virt %p phys %llx)\n", buffer->index,
		  buffer->index + buffer->entries - 1,
		  (u64)buffer->buf.dma_addr, len,
		  buffer->buf.addr, (u64)FUNC5(buffer->buf.addr));

	return 0;
}