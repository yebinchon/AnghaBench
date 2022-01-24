#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct ch_filter_specification {int dummy; } ;
struct TYPE_3__ {scalar_t__ field; int offset; scalar_t__ size; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int*,scalar_t__) ; 
 TYPE_1__* pedits ; 

__attribute__((used)) static void FUNC2(struct ch_filter_specification *fs, u32 val, u32 mask,
			  u8 field)
{
	u32 set_val = val & ~mask;
	u32 offset = 0;
	u8 size = 1;
	int i;

	for (i = 0; i < FUNC0(pedits); i++) {
		if (pedits[i].field == field) {
			offset = pedits[i].offset;
			size = pedits[i].size;
			break;
		}
	}
	FUNC1((u8 *)fs + offset, &set_val, size);
}