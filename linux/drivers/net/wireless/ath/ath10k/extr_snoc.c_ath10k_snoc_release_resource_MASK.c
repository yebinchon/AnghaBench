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
struct ath10k {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int CE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	int i;

	FUNC1(&ar->napi);
	for (i = 0; i < CE_COUNT; i++)
		FUNC0(ar, i);
}