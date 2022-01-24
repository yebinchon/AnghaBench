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
struct htc_packet {int status; int /*<<< orphan*/  context; int /*<<< orphan*/  (* completion ) (int /*<<< orphan*/ ,struct htc_packet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_HIF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct htc_packet*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct htc_packet*) ; 

int FUNC2(void *context, int status)
{
	struct htc_packet *packet = context;

	FUNC0(ATH6KL_DBG_HIF, "hif rw completion pkt 0x%p status %d\n",
		   packet, status);

	packet->status = status;
	packet->completion(packet->context, packet);

	return 0;
}