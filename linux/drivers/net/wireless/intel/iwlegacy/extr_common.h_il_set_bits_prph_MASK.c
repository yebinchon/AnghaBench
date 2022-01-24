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
typedef  int u32 ;
struct il_priv {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct il_priv*) ; 
 int FUNC1 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC7(struct il_priv *il, u32 reg, u32 mask)
{
	unsigned long reg_flags;

	FUNC5(&il->reg_lock, reg_flags);
	if (FUNC4(FUNC0(il))) {
		FUNC3(il, reg, (FUNC1(il, reg) | mask));
		FUNC2(il);
	}
	FUNC6(&il->reg_lock, reg_flags);
}