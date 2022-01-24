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
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tmp ;
struct r8152 {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int BYTE_EN_WORD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static u16 FUNC2(struct r8152 *tp, u16 type, u16 index)
{
	u32 data;
	__le32 tmp;
	u16 byen = BYTE_EN_WORD;
	u8 shift = index & 2;

	index &= ~3;
	byen <<= shift;

	FUNC1(tp, index, sizeof(tmp), &tmp, type | byen);

	data = FUNC0(tmp);
	data >>= (shift * 8);
	data &= 0xffff;

	return (u16)data;
}