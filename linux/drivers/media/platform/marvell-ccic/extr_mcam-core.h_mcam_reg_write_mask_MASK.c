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
struct mcam_camera {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct mcam_camera*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct mcam_camera *cam, unsigned int reg,
		unsigned int val, unsigned int mask)
{
	unsigned int v = FUNC0(cam, reg);

	v = (v & ~mask) | (val & mask);
	FUNC1(cam, reg, v);
}