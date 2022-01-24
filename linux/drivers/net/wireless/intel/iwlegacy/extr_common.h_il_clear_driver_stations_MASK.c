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
struct il_priv {int /*<<< orphan*/  sta_lock; scalar_t__ ucode_key_table; scalar_t__ num_stations; int /*<<< orphan*/  stations; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void
FUNC3(struct il_priv *il)
{
	unsigned long flags;

	FUNC1(&il->sta_lock, flags);
	FUNC0(il->stations, 0, sizeof(il->stations));
	il->num_stations = 0;
	il->ucode_key_table = 0;
	FUNC2(&il->sta_lock, flags);
}