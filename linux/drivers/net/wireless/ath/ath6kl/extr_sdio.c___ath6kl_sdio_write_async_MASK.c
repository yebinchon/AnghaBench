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
struct bus_request {void* packet; int /*<<< orphan*/  request; int /*<<< orphan*/  length; int /*<<< orphan*/  buffer; int /*<<< orphan*/  address; scalar_t__ scat_req; } ;
struct ath6kl_sdio {int /*<<< orphan*/  ar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_sdio*,struct bus_request*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl_sdio*,struct bus_request*) ; 

__attribute__((used)) static void FUNC4(struct ath6kl_sdio *ar_sdio,
				      struct bus_request *req)
{
	if (req->scat_req) {
		FUNC3(ar_sdio, req);
	} else {
		void *context;
		int status;

		status = FUNC2(ar_sdio->ar, req->address,
						     req->buffer, req->length,
						     req->request);
		context = req->packet;
		FUNC1(ar_sdio, req);
		FUNC0(context, status);
	}
}