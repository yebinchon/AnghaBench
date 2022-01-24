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
typedef  scalar_t__ u32 ;
struct venc_vp8_inst {scalar_t__ hw_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC1(struct venc_vp8_inst *inst, u32 addr)
{
	return FUNC0(inst->hw_base + addr);
}