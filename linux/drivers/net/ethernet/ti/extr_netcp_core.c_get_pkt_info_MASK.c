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
typedef  void* u32 ;
struct knav_dma_desc {int /*<<< orphan*/  next_desc; int /*<<< orphan*/  buff; int /*<<< orphan*/  buff_len; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(dma_addr_t *buff, u32 *buff_len, dma_addr_t *ndesc,
			 struct knav_dma_desc *desc)
{
	*buff_len = FUNC0(desc->buff_len);
	*buff = FUNC0(desc->buff);
	*ndesc = FUNC0(desc->next_desc);
}