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
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RDM_RX_DMA_DESC_CACHE_INIT_DONE_ADR ; 
 int /*<<< orphan*/  RDM_RX_DMA_DESC_CACHE_INIT_DONE_MSK ; 
 int /*<<< orphan*/  RDM_RX_DMA_DESC_CACHE_INIT_DONE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u32 FUNC1(struct aq_hw_s *aq_hw)
{
	return FUNC0(aq_hw, RDM_RX_DMA_DESC_CACHE_INIT_DONE_ADR,
				  RDM_RX_DMA_DESC_CACHE_INIT_DONE_MSK,
				  RDM_RX_DMA_DESC_CACHE_INIT_DONE_SHIFT);
}