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
struct hif_scatter_req {int /*<<< orphan*/  list; } ;
struct ath6kl_sdio {int /*<<< orphan*/  scat_lock; int /*<<< orphan*/  scat_req; } ;
struct ath6kl {int dummy; } ;

/* Variables and functions */
 struct ath6kl_sdio* FUNC0 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ath6kl *ar,
					struct hif_scatter_req *s_req)
{
	struct ath6kl_sdio *ar_sdio = FUNC0(ar);

	FUNC2(&ar_sdio->scat_lock);

	FUNC1(&s_req->list, &ar_sdio->scat_req);

	FUNC3(&ar_sdio->scat_lock);
}