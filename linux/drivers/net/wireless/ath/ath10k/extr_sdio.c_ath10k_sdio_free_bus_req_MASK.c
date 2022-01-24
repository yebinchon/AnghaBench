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
struct ath10k_sdio_bus_request {int /*<<< orphan*/  list; } ;
struct ath10k_sdio {int /*<<< orphan*/  lock; int /*<<< orphan*/  bus_req_freeq; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 struct ath10k_sdio* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k_sdio_bus_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ath10k *ar,
				     struct ath10k_sdio_bus_request *bus_req)
{
	struct ath10k_sdio *ar_sdio = FUNC0(ar);

	FUNC2(bus_req, 0, sizeof(*bus_req));

	FUNC3(&ar_sdio->lock);
	FUNC1(&bus_req->list, &ar_sdio->bus_req_freeq);
	FUNC4(&ar_sdio->lock);
}