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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ bits; } ;
struct mlxsw_item {int shift; int /*<<< orphan*/  no_real_shift; TYPE_1__ size; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct mlxsw_item const*,unsigned short,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(char *buf, const struct mlxsw_item *item,
				      unsigned short index, u32 val)
{
	unsigned int offset = FUNC1(item, index,
						  sizeof(u32));
	__be32 *b = (__be32 *) buf;
	u32 mask = FUNC0(item->size.bits - 1, 0) << item->shift;
	u32 tmp;

	if (!item->no_real_shift)
		val <<= item->shift;
	val &= mask;
	tmp = FUNC2(b[offset]);
	tmp &= ~mask;
	tmp |= val;
	b[offset] = FUNC3(tmp);
}