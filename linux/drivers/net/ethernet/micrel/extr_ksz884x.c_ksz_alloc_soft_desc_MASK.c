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
struct ksz_desc_info {int /*<<< orphan*/  ring; int /*<<< orphan*/  alloc; } ;
struct ksz_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_desc_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ksz_desc_info *desc_info, int transmit)
{
	desc_info->ring = FUNC1(desc_info->alloc, sizeof(struct ksz_desc),
				  GFP_KERNEL);
	if (!desc_info->ring)
		return 1;
	FUNC0(desc_info, transmit);
	return 0;
}