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
struct mc7 {char const* name; int /*<<< orphan*/  width; int /*<<< orphan*/  size; scalar_t__ offset; struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ A_MC7_CFG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MC7_PMRX_BASE_ADDR ; 
 scalar_t__ M_DEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct adapter *adapter, struct mc7 *mc7,
		     unsigned int base_addr, const char *name)
{
	u32 cfg;

	mc7->adapter = adapter;
	mc7->name = name;
	mc7->offset = base_addr - MC7_PMRX_BASE_ADDR;
	cfg = FUNC3(adapter, mc7->offset + A_MC7_CFG);
	mc7->size = FUNC0(cfg) == M_DEN ? 0 : FUNC2(cfg);
	mc7->width = FUNC1(cfg);
}