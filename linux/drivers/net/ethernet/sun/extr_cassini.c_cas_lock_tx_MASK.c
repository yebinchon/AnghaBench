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
struct cas {int /*<<< orphan*/ * tx_lock; } ;

/* Variables and functions */
 int N_TX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC1(struct cas *cp)
{
	int i;

	for (i = 0; i < N_TX_RINGS; i++)
		FUNC0(&cp->tx_lock[i], i);
}