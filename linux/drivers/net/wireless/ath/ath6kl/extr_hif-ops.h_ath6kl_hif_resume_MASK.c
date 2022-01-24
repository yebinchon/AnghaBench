#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ath6kl {TYPE_1__* hif_ops; } ;
struct TYPE_2__ {int (* resume ) (struct ath6kl*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ath6kl*) ; 

__attribute__((used)) static inline int FUNC2(struct ath6kl *ar)
{
	FUNC0(ATH6KL_DBG_HIF, "hif resume\n");

	return ar->hif_ops->resume(ar);
}