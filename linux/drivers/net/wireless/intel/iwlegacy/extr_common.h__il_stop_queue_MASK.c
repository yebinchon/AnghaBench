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
typedef  size_t u8 ;
struct il_priv {int /*<<< orphan*/  hw; int /*<<< orphan*/ * queue_stop_count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static inline void
FUNC2(struct il_priv *il, u8 ac)
{
	if (FUNC0(&il->queue_stop_count[ac]) > 0)
		FUNC1(il->hw, ac);
}