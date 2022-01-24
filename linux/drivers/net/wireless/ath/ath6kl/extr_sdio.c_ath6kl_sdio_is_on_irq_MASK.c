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
struct ath6kl_sdio {int /*<<< orphan*/  irq_handling; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 struct ath6kl_sdio* FUNC0 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ath6kl *ar)
{
	struct ath6kl_sdio *ar_sdio = FUNC0(ar);

	return !FUNC1(&ar_sdio->irq_handling);
}