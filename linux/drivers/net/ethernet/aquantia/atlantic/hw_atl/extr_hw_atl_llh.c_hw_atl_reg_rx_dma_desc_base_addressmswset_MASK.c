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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct aq_hw_s *aq_hw,
					       u32 rx_dma_desc_base_addrmsw,
					       u32 descriptor)
{
	FUNC1(aq_hw, FUNC0(descriptor),
			rx_dma_desc_base_addrmsw);
}