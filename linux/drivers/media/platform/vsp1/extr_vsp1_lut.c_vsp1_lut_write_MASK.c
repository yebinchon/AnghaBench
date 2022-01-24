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
struct vsp1_lut {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vsp1_dl_body*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct vsp1_lut *lut,
				  struct vsp1_dl_body *dlb, u32 reg, u32 data)
{
	FUNC0(dlb, reg, data);
}