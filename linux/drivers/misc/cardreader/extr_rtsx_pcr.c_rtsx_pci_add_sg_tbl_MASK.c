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
typedef  int u8 ;
typedef  int u64 ;
struct rtsx_pcr {int sgi; scalar_t__ host_sg_tbl_ptr; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int RTSX_SG_END ; 
 int RTSX_SG_TRANS_DATA ; 
 int RTSX_SG_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 

__attribute__((used)) static void FUNC2(struct rtsx_pcr *pcr,
		dma_addr_t addr, unsigned int len, int end)
{
	u64 *ptr = (u64 *)(pcr->host_sg_tbl_ptr) + pcr->sgi;
	u64 val;
	u8 option = RTSX_SG_VALID | RTSX_SG_TRANS_DATA;

	FUNC0(pcr, "DMA addr: 0x%x, Len: 0x%x\n", (unsigned int)addr, len);

	if (end)
		option |= RTSX_SG_END;
	val = ((u64)addr << 32) | ((u64)len << 12) | option;

	FUNC1(val, ptr);
	pcr->sgi++;
}