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
struct rocker_desc_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rocker_desc_info*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC1(struct rocker_desc_info *desc_info, int attrtype, u32 value)
{
	u32 tmp = value;

	return FUNC0(desc_info, attrtype, sizeof(u32), &tmp);
}