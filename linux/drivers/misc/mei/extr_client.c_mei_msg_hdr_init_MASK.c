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
struct mei_msg_hdr {int /*<<< orphan*/  internal; scalar_t__ dma_ring; scalar_t__ msg_complete; scalar_t__ reserved; scalar_t__ length; int /*<<< orphan*/  me_addr; int /*<<< orphan*/  host_addr; } ;
struct mei_cl_cb {int /*<<< orphan*/  internal; int /*<<< orphan*/  cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mei_msg_hdr *mei_hdr, struct mei_cl_cb *cb)
{
	mei_hdr->host_addr = FUNC0(cb->cl);
	mei_hdr->me_addr = FUNC1(cb->cl);
	mei_hdr->length = 0;
	mei_hdr->reserved = 0;
	mei_hdr->msg_complete = 0;
	mei_hdr->dma_ring = 0;
	mei_hdr->internal = cb->internal;
}