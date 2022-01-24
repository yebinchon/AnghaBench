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
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nvt_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*,int,int) ; 

__attribute__((used)) static inline void FUNC2(struct nvt_dev *nvt, u8 val, u8 reg)
{
	u8 tmp = FUNC0(nvt, reg) | val;
	FUNC1(nvt, tmp, reg);
}