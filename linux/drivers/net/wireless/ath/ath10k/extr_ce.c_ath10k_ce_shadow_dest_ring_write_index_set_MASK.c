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
struct ath10k_ce_pipe {int dummy; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,struct ath10k_ce_pipe*) ; 

__attribute__((used)) static inline void
FUNC2(struct ath10k *ar,
					   struct ath10k_ce_pipe *ce_state,
					   unsigned int value)
{
	FUNC0(ar, FUNC1(ar, ce_state), value);
}