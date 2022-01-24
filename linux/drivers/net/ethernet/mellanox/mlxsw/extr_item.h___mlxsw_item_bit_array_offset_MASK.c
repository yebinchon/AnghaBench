#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct TYPE_2__ {int bytes; } ;
struct mlxsw_item {int element_size; int offset; TYPE_1__ size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static inline u16
FUNC3(const struct mlxsw_item *item,
			      u16 index, u8 *shift)
{
	u16 max_index, be_index;
	u16 offset;		/* byte offset inside the array */
	u8 in_byte_index;

	FUNC1(index && !item->element_size);
	if (item->offset % sizeof(u32) != 0 ||
	    BITS_PER_BYTE % item->element_size != 0) {
		FUNC2("mlxsw: item bug (name=%s,offset=%x,element_size=%x)\n",
		       item->name, item->offset, item->element_size);
		FUNC0();
	}

	max_index = (item->size.bytes << 3) / item->element_size - 1;
	be_index = max_index - index;
	offset = be_index * item->element_size >> 3;
	in_byte_index  = index % (BITS_PER_BYTE / item->element_size);
	*shift = in_byte_index * item->element_size;

	return item->offset + offset;
}