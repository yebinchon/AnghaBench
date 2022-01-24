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
struct mc5 {scalar_t__ mode; int /*<<< orphan*/  parity_enabled; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_CONFIG ; 
 int F_MBUSEN ; 
 scalar_t__ MC5_MODE_72_BIT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const struct mc5 *mc5)
{
	FUNC3(mc5->adapter, A_MC5_DB_CONFIG,
		     FUNC2(mc5->mode == MC5_MODE_72_BIT) |
		     FUNC0(mc5->mode == MC5_MODE_72_BIT) |
		     FUNC1(mc5->parity_enabled) | F_MBUSEN);
}