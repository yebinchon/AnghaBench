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
struct macb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBW ; 
 int /*<<< orphan*/  DBWDEF ; 
 int /*<<< orphan*/  DCFG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEM_DBW128 ; 
 int /*<<< orphan*/  GEM_DBW32 ; 
 int /*<<< orphan*/  GEM_DBW64 ; 
 int /*<<< orphan*/  FUNC2 (struct macb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct macb*) ; 

__attribute__((used)) static u32 FUNC4(struct macb *bp)
{
	if (!FUNC3(bp))
		return 0;

	switch (FUNC1(DBWDEF, FUNC2(bp, DCFG1))) {
	case 4:
		return FUNC0(DBW, GEM_DBW128);
	case 2:
		return FUNC0(DBW, GEM_DBW64);
	case 1:
	default:
		return FUNC0(DBW, GEM_DBW32);
	}
}