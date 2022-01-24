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
typedef  int /*<<< orphan*/  uint ;
typedef  int u16 ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct mtd_info *mtd, uint reg, u16 bits)
{
	FUNC1(mtd, reg, FUNC0(mtd, reg) | bits);
}