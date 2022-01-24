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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct aq_ring_s {unsigned int size; int /*<<< orphan*/  idx; scalar_t__ dx_ring_pa; } ;
struct aq_ring_param_s {int /*<<< orphan*/  cpu; int /*<<< orphan*/  vec_idx; } ;
struct aq_hw_s {int dummy; } ;

/* Variables and functions */
 unsigned int AQ_CFG_RX_FRAME_MAX ; 
 int FUNC0 (struct aq_hw_s*) ; 
 int /*<<< orphan*/  FUNC1 (struct aq_hw_s*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct aq_hw_s*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct aq_hw_s*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct aq_hw_s*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct aq_hw_s *self,
				     struct aq_ring_s *aq_ring,
				     struct aq_ring_param_s *aq_ring_param)
{
	u32 dma_desc_addr_lsw = (u32)aq_ring->dx_ring_pa;
	u32 dma_desc_addr_msw = (u32)(((u64)aq_ring->dx_ring_pa) >> 32);

	FUNC6(self, false, aq_ring->idx);

	FUNC8(self, 0U, aq_ring->idx);

	FUNC12(self, dma_desc_addr_lsw,
						  aq_ring->idx);

	FUNC13(self,
						  dma_desc_addr_msw,
						  aq_ring->idx);

	FUNC9(self, aq_ring->size / 8U, aq_ring->idx);

	FUNC4(self,
					      AQ_CFG_RX_FRAME_MAX / 1024U,
					      aq_ring->idx);

	FUNC7(self, 0U, aq_ring->idx);
	FUNC8(self, 0U, aq_ring->idx);
	FUNC14(self, 0U, aq_ring->idx);

	/* Rx ring set mode */

	/* Mapping interrupt vector */
	FUNC2(self, aq_ring_param->vec_idx, aq_ring->idx);
	FUNC1(self, true, aq_ring->idx);

	FUNC3(self, aq_ring_param->cpu, aq_ring->idx);
	FUNC5(self, 0U, aq_ring->idx);
	FUNC10(self, 0U, aq_ring->idx);
	FUNC11(self, 0U, aq_ring->idx);

	return FUNC0(self);
}