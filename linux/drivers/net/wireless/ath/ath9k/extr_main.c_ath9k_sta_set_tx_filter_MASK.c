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
struct ath_node {int /*<<< orphan*/ * key_idx; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah,
				    struct ath_node *an,
				    bool set)
{
	int i;

	for (i = 0; i < FUNC0(an->key_idx); i++) {
		if (!an->key_idx[i])
			continue;
		FUNC1(ah, an->key_idx[i], set);
	}
}