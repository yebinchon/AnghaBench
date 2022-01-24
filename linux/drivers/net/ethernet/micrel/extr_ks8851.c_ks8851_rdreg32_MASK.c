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
typedef  int /*<<< orphan*/  u8 ;
struct ks8851_net {int dummy; } ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8851_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static unsigned FUNC4(struct ks8851_net *ks, unsigned reg)
{
	__le32 rx = 0;

	FUNC1(reg & 3);

	FUNC2(ks, FUNC0(0xf, reg), (u8 *)&rx, 4);
	return FUNC3(rx);
}