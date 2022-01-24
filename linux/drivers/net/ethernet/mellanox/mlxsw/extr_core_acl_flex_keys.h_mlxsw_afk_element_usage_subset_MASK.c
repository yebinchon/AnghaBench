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
struct mlxsw_afk_element_usage {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int MLXSW_AFK_ELEMENT_MAX ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC1(struct mlxsw_afk_element_usage *elusage_small,
			       struct mlxsw_afk_element_usage *elusage_big)
{
	int i;

	for (i = 0; i < MLXSW_AFK_ELEMENT_MAX; i++)
		if (FUNC0(i, elusage_small->usage) &&
		    !FUNC0(i, elusage_big->usage))
			return false;
	return true;
}