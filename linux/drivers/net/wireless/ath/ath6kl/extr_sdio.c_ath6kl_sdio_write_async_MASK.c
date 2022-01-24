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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct htc_packet {int dummy; } ;
struct bus_request {int /*<<< orphan*/  list; struct htc_packet* packet; void* request; void* length; int /*<<< orphan*/ * buffer; void* address; } ;
struct ath6kl_sdio {int /*<<< orphan*/  wr_async_work; int /*<<< orphan*/  wr_async_lock; int /*<<< orphan*/  wr_asyncq; } ;
struct ath6kl {int /*<<< orphan*/  ath6kl_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 struct bus_request* FUNC1 (struct ath6kl_sdio*) ; 
 struct ath6kl_sdio* FUNC2 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath6kl *ar, u32 address, u8 *buffer,
				   u32 length, u32 request,
				   struct htc_packet *packet)
{
	struct ath6kl_sdio *ar_sdio = FUNC2(ar);
	struct bus_request *bus_req;

	bus_req = FUNC1(ar_sdio);

	if (FUNC0(!bus_req))
		return -ENOMEM;

	bus_req->address = address;
	bus_req->buffer = buffer;
	bus_req->length = length;
	bus_req->request = request;
	bus_req->packet = packet;

	FUNC5(&ar_sdio->wr_async_lock);
	FUNC3(&bus_req->list, &ar_sdio->wr_asyncq);
	FUNC6(&ar_sdio->wr_async_lock);
	FUNC4(ar->ath6kl_wq, &ar_sdio->wr_async_work);

	return 0;
}