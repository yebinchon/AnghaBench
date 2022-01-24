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
struct max2175 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct max2175*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct max2175*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct max2175*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct max2175*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static u8 FUNC5(struct max2175 *ctx, u8 row)
{
	u8 data = 0;

	FUNC1(ctx, 56, 4, 0);
	FUNC2(ctx, 56, 3, 0, row);

	FUNC4(2000, 2500);
	FUNC0(ctx, 58, &data);

	FUNC2(ctx, 56, 3, 0, 0);

	FUNC3(ctx, "read_rom: row %d data 0x%02x\n", row, data);

	return data;
}